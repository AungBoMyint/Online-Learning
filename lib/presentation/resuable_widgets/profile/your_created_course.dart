import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/domain/data/theme.dart';
import 'package:online_learning/presentation/page/upload/function_widget/function.dart';
import 'package:online_learning/route.dart';

class YourCreatedCourseWidget extends StatelessWidget {
  const YourCreatedCourseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Your Created Course",
        style: AppThemeData.darkText.headline1,
      )),
      body: BlocConsumer<DataBloc, DataState>(
        builder: (context, state) {
          final courseList = state.currentUserCourseList;
          if (courseList == null || courseList.isEmpty) {
            return Center(
                child: SizedBox(
                    height: size.height * 0.3,
                    width: size.width,
                    child: Column(children: [
                      Text("Haven't you created any course yet?",
                          style: AppThemeData.darkText.subtitle1!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          )),
                      Center(
                          child: ElevatedButton(
                        onPressed: () {
                          //Go To Create Course Page
                          Navigator.of(context).pushNamed(
                            RouteGenerator.courseUploadPage,
                          );
                        },
                        child: Text(
                          "let's create",
                          style: AppThemeData.lightText.subtitle1,
                        ),
                      ))
                    ])));
          } else {
            return ListView.separated(
              primary: false,
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return const SizedBox(height: 10);
              },
              itemBuilder: (context, index) {
                return SizedBox(
                  height: size.height * 0.2,
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    elevation: 5,
                    child: Center(
                      child: ListTile(
                        //Course Image
                        leading: Container(
                          height: size.height * 0.2,
                          width: size.width * 0.2,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                          child: CachedNetworkImage(
                            imageUrl: courseList[index].image ?? "",
                            fit: BoxFit.fill,
                            progressIndicatorBuilder: (context, url, status) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    value: status.progress,
                                  ),
                                ),
                              );
                            },
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),

                        ///Course TItle
                        title: Text(
                            courseList[index].courseName ??
                                "Something is wrong!",
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),

                        ///Course Edit Dot
                        trailing: IconButton(
                          onPressed: () {
                            ///Show Bottom Sheet
                            showBottomSheet(
                              constraints: BoxConstraints(
                                maxHeight: size.height * 0.23,
                              ),
                              elevation: 10,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              context: context,
                              builder: (context) {
                                return SizedBox(
                                  height: size.height * 0.35,
                                  width: size.width,
                                  child: Card(
                                      child: ListView(
                                          primary: false,
                                          shrinkWrap: true,
                                          children: [
                                        ///Add Module
                                        TextButton(
                                          onPressed: () => addModule(
                                              context, courseList[index].id),
                                          child: Row(
                                            children: [
                                              const Icon(
                                                  FontAwesomeIcons.buffer,
                                                  color: Colors.green),
                                              const SizedBox(width: 10),
                                              Text(
                                                "Add Module",
                                                style: AppThemeData
                                                    .darkText.subtitle1,
                                              ),
                                            ],
                                          ),
                                        ),

                                        ///Add Lesson
                                        TextButton(
                                          onPressed: () {
                                            //We Request This Course's Modules
                                            BlocProvider.of<DataBloc>(context)
                                                .add(GetCurrentCourseModules(
                                                    courseId:
                                                        courseList[index].id));

                                            ///Then Show Dialog To Choose Module to add Lesson
                                            showDialogToChooseModuleListForEachFunction(
                                                context,
                                                (value) =>
                                                    addLesson(context, value),
                                                dialogTitle:
                                                    "Choose A Module That you want to add Lesson!.");
                                          },
                                          child: Row(
                                            children: [
                                              const Icon(
                                                  FontAwesomeIcons.chalkboard,
                                                  color: Colors.pink),
                                              const SizedBox(width: 10),
                                              Text(
                                                "Add Lesson",
                                                style: AppThemeData
                                                    .darkText.subtitle1,
                                              ),
                                            ],
                                          ),
                                        ),

                                        ///Add Quiz
                                        TextButton(
                                          onPressed: () {
                                            //We Request This Course's Modules
                                            BlocProvider.of<DataBloc>(context)
                                                .add(GetCurrentCourseModules(
                                                    courseId:
                                                        courseList[index].id));
                                            /////////
                                            showDialogToChooseModuleListForEachFunction(
                                                context,
                                                (value) =>
                                                    showQuizTypeAndAddQuizType(
                                                      context,
                                                      value,
                                                    ),
                                                dialogTitle:
                                                    "Choose A Module That you want to add Quiz!.");
                                          },
                                          child: Row(
                                            children: [
                                              const Icon(
                                                FontAwesomeIcons.brain,
                                                color: Colors.yellow,
                                              ),
                                              const SizedBox(width: 10),
                                              Text(
                                                "Add Quiz",
                                                style: AppThemeData
                                                    .darkText.subtitle1,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ])),
                                );
                              },
                            );
                          },
                          icon: const Icon(FontAwesomeIcons.edit,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: courseList.length,
            );
          }
        },
        listener: (context, state) {
          //TODO: Do Something
        },
      ),
    );
  }
}

//Choice Current Module AlertDialog
