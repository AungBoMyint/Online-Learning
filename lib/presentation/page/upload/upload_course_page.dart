import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide Provider;
import 'package:image_picker/image_picker.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/application/provider/course_provider.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/domain/data/theme.dart';
import 'package:online_learning/presentation/page/upload/course_widget.dart';

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
          bottomSheet: ElevatedButton(
            onPressed: () {
              //TODO: Upload Course Into Firebase
            },
            child: Text(
              "Upload",
              style: AppThemeData.darkText.subtitle1,
            ),
          ),
          appBar: AppBar(
              title: Text(
            "Upload Your Course",
            style: AppThemeData.darkText.headline1,
          )),
          body: const CourseWidget(),
        ),
      ),
    );
  }
}
