import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/application/function/bloc/function_bloc.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/domain/data/theme.dart';
import 'package:online_learning/domain/hive/course_hive.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../route.dart';

class CourseDetialPage extends ConsumerWidget {
  final String imageUrl;
  final String courseName;
  final String courseDescription;
  const CourseDetialPage({
    Key? key,
    required this.courseName,
    required this.imageUrl,
    required this.courseDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final provider = ref.watch(functionProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          courseName,
          style: AppThemeData.darkText.headline1,
        ),
        actions: [
          IconButton(
            onPressed: () {
              ///Navigate Comment Page
              Navigator.of(context).pushNamed(
                RouteGenerator.reviewPage,
              );
            },
            icon: const Icon(FontAwesomeIcons.comment, color: Colors.black),
          ),
        ],
      ),
      body: BlocConsumer<DataBloc, DataState>(
        builder: (context, state) {
          final moduleList = state.moduleList;
          if (moduleList == null || moduleList.isEmpty) {
            return Center(
                child: Text(
              "Will get soon..",
              style: AppThemeData.darkText.headline3,
            ));
          } else {
            return ListView(shrinkWrap: true, children: [
              ///Course Image
              SizedBox(
                width: size.width,
                height: size.height * 0.3,
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
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
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),

              ///Course Description
              courseDescription.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Description:",
                        style: AppThemeData.darkText.subtitle1,
                      ),
                    )
                  : const SizedBox(height: 0),
              const SizedBox(
                height: 5,
              ),
              courseDescription.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        courseDescription,
                        style: AppThemeData.darkText.subtitle1!
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
                    )
                  : const SizedBox(height: 0),
              const SizedBox(height: 10),

              ///Course Overview
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Overview:",
                  style: AppThemeData.darkText.subtitle1,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  "It is a long established fact  that a\n"
                  "reader will be distracted by the readable\n"
                  "content of a page when looking at its\n"
                  "layout.",
                  style: AppThemeData.darkText.subtitle1!
                      .copyWith(fontWeight: FontWeight.normal),
                ),
              ),
              /////Grid View All Module
              GridView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: moduleList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SizedBox(
                      height: size.height * 0.3,
                      width: size.width * 0.5,
                      child: InkWell(
                        onTap: () {
                          //TODO: Request Lesson List Of Current Module
                          BlocProvider.of<DataBloc>(context).add(
                              DataEvent.getCurrentModuleLessons(
                                  moduleId: state.moduleList![index].id));

                          ///We Need to Change LessonIndex at the first time to request
                          ///the first lesson from FirebaseFirestore
                          BlocProvider.of<FunctionBloc>(context)
                              .add(const ChangeLessonIndex(lessonIndex: 0));
                          //TODO: we add this module into Current Course
                          provider.addThisModuleOrNot(
                              moduleid: state.moduleList![index].id);
                          //Then Change Module Length
                          provider.changeModuleLength(
                              value: state.moduleList!.length);
                          provider.addModuleTitle(
                              state.moduleList![index].moduleTitle ?? "");

                          ///TODO:Go To Module Detail contain Lesson and Content
                          Navigator.of(context).pushNamed(
                            RouteGenerator.moduleDetailPage,
                          );
                        },
                        child: Card(
                            elevation: 10,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            )),
                            child: Center(
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.blue,
                                  child: Text(
                                    "${index + 1}",
                                    style: AppThemeData.lightText.headline1,
                                  ),
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    moduleList[index].moduleTitle ?? "",
                                    style: AppThemeData.darkText.headline3,
                                  ),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child:
                                      ValueListenableBuilder<Box<CourseHive>>(
                                    valueListenable:
                                        Hive.box<CourseHive>('progressCourse')
                                            .listenable(
                                                keys: [provider.courseId]),
                                    builder: (context, box, widget) {
                                      //If user have already enter this course,we need to show progress or
                                      if (provider.isContainThisModule(
                                          moduleId:
                                              state.moduleList![index].id)) {
                                        return LinearPercentIndicator(
                                          //Course Progress
                                          lineHeight: 10,
                                          percent:
                                              0.5 /*box
                                                .get(provider.courseId)!
                                                .moduleMap[
                                                    state.moduleList![index].id]!
                                                .moduleProgress*/
                                          ,
                                          progressColor: Colors.blue,
                                          backgroundColor: Colors.grey,
                                        );
                                      }
                                      //Or don't need to show progress
                                      else {
                                        return const Icon(FontAwesomeIcons.lock,
                                            color: Colors.black);
                                      }
                                    },
                                  ),
                                ),
                              ),
                            )),
                      ),
                    ),
                  );
                },
              ),
            ]);
          }
        },
        listener: (context, state) {
          //TODO: Do Something.
        },
      ),
    );
  }
}
