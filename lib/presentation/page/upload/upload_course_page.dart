import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide Provider;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/application/provider/course_provider.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/domain/json/course/module.dart';
import 'package:online_learning/domain/mock/app/course_bottomsheet.dart';
import 'package:online_learning/presentation/page/upload/course_widget.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class UploadCoursePage extends ConsumerWidget {
  const UploadCoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(courseProvider);
    final size = MediaQuery.of(context).size;
    return BlocListener<DataBloc, DataState>(
      listener: (context, state) {
        if (state.isCourseUpload) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            duration: Duration(seconds: 3),
            content: Text("Uploading......"),
          ));
        }
        state.failureOrSuccess.fold(() => null, (either) {
          either.fold((l) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              backgroundColor: Colors.red,
              duration: Duration(seconds: 3),
              content: Text("Something is wrong......",
                  style: TextStyle(color: Colors.white)),
            ));
          }, (r) => null);
        });
      },
      child: WillPopScope(
        onWillPop: () async {
          ////We need to Clear All Data
          /* provider.course = null;
          provider.module = null;
          provider.lesson = null;
          provider.image = null;
          provider.lessonImageOrDescriptionOrVideoList = [];
          return true;*/
          return true;
        },
        child: Scaffold(
          backgroundColor: Colors.blue[50],
          appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
            elevation: 1,
            backgroundColor: Colors.white,
            title: const Text("Upload Your Course",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: ElevatedButton(
                  onPressed: provider.courseTitle == null ||
                          provider.courseTitle!.isEmpty ||
                          provider.courseTitle!.length < 5
                      ? null
                      : () {
                          //We must take care this course is save
                          provider.uploadCourse();
                          final Module? module = provider.moduleObject;
///////////////////////.....................We Upload All If it are not null.........//////
                          ///TODO: TO Upload Firebase
                          BlocProvider.of<DataBloc>(context).add(
                              UploadCourseToFirebase(course: provider.course!));

                          if (module != null) {
                            BlocProvider.of<DataBloc>(context)
                                .add(UploadModuleToFirebase(
                              module: module,
                              courseId: provider.course!.id,
                            ));
                          }
                          if (provider.lesson != null) {
                            BlocProvider.of<DataBloc>(context).add(
                                UploadLessonToFirebase(
                                    listLesson: provider.lesson!,
                                    moduleId: module!.id));
                          }
////////////...................///////////////////////............///////////////
                          //Nevigate BAck
                          Navigator.of(context).pop();
                        },
                  child: const Text("Upload",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      )),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          body: SlidingUpPanel(
            maxHeight: size.height * 0.35,
            collapsed: const Align(
              alignment: Alignment.topCenter,
              child: Icon(FontAwesomeIcons.angleDoubleUp),
            ),
            panel: SizedBox(
                height: size.height * 0.3,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: CourseBottomSheet.items.map(
                      (item) {
                        final id = item.id;
                        return InkWell(
                          onTap: () => id == 1
                              ? _getPhoto(context, provider)
                              : id == 2
                                  ? _showCourseType(context, provider)
                                  : id == 3
                                      ? null
                                      : null,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Row(
                              children: [
                                item.icons,
                                const SizedBox(width: 20),
                                Text(item.text,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ))
                              ],
                            ),
                          ),
                        );
                      },
                    ).toList())),
            body: const CourseWidget(),
          ),
        ),
      ),
    );
  }

  //Pick Photo
  void _getPhoto(BuildContext context, CourseProvider provider) async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    provider.addImage(image!.path);
  }

  void _showCourseType(BuildContext context, CourseProvider provider) {
    showAnimatedDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (conext, index) {
                return TextButton(
                  onPressed: () {
                    provider.changeCourseType(index);
                    Navigator.of(context).pop();
                  },
                  child: Text(
                      index == 1
                          ? "Basic"
                          : index == 2
                              ? "Intermediate"
                              : "Advance",
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                );
              },
            ),
          ),
        );
      },
    );
  }

  void _addQuiz(BuildContext context) {}
}
