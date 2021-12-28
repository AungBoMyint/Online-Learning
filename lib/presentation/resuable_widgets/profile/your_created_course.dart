import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/presentation/page/upload/function_widget/function.dart';

class YourCreatedCourseWidget extends StatelessWidget {
  const YourCreatedCourseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocConsumer<DataBloc, DataState>(
      builder: (context, state) {
        final courseList = state.currentUserCourseList;
        if (courseList == null) {
          return const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("You haven't crated any course",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )));
        } else {
          return ListView.separated(
            primary: false,
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return const SizedBox(height: 10);
            },
            itemBuilder: (context, index) {
              return SizedBox(
                height: size.height * 0.15,
                child: Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  elevation: 5,
                  child: Center(
                    child: ListTile(
                      //Course Image
                      leading: CachedNetworkImage(
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

                      ///Course TItle
                      title: Text(
                          courseList[index].courseName ?? "Something is wrong!",
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
                                          children: const [
                                            Icon(FontAwesomeIcons.buffer,
                                                color: Colors.black),
                                            SizedBox(width: 10),
                                            Text("Add Module",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                )),
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
                                          showAnimatedDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: const Text(
                                                    "Choose Module That you watn to add Lesson to!",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18,
                                                    )),
                                                //Module List
                                                content: BlocConsumer<DataBloc,
                                                    DataState>(
                                                  builder: (context, state) {
                                                    final moduleList =
                                                        state.moduleList;
                                                    if (moduleList != null) {
                                                      return ListView.separated(
                                                        itemBuilder:
                                                            (context, index) {
                                                          return TextButton(
                                                            onPressed: () {
                                                              ///Pop This Dialog
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();

                                                              ///Then we add this module's ID into lessonProvider

                                                              ///Then Show Lesson Dialog
                                                              addLesson(
                                                                  context,
                                                                  moduleList[
                                                                          index]
                                                                      .id);
                                                            },
                                                            child: Text(
                                                                moduleList[index]
                                                                        .moduleTitle ??
                                                                    "",
                                                                style:
                                                                    const TextStyle(
                                                                  color: Colors
                                                                      .blue,
                                                                )),
                                                          );
                                                        },
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return const SizedBox(
                                                              height: 10);
                                                        },
                                                        itemCount:
                                                            moduleList.length,
                                                      );
                                                    } else {
                                                      return const Text(
                                                          "Here is no any module!.",
                                                          style: TextStyle(
                                                            color: Colors.red,
                                                          ));
                                                    }
                                                  },
                                                  listener: (context, state) {},
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: Row(
                                          children: const [
                                            Icon(FontAwesomeIcons.chalkboard,
                                                color: Colors.black),
                                            SizedBox(width: 10),
                                            Text("Add Lesson",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                )),
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
    );
  }
}
