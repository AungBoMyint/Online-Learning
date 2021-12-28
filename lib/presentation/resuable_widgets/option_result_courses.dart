import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/application/provider/function_provider.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/domain/hive/course_hive.dart';
import 'package:online_learning/presentation/page/course_detail/course_detail_page.dart';
import 'package:online_learning/route.dart';

class OptionResultCourses extends ConsumerWidget {
  const OptionResultCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final provider = ref.watch(functionProvider);
    return Padding(
      padding: const EdgeInsets.only(bottom: 56),
      //height: size.height * 0.4,
      child: BlocConsumer<DataBloc, DataState>(listener: (context, state) {
        //TODO: Do Something
      }, builder: (context, state) {
        final courseList = state.courseList;
        if (courseList == null) {
          return const SizedBox(
              height: 50,
              width: 60,
              child: Center(
                  child: Text("Here is no courses now!...",
                      style: TextStyle(color: Colors.black))));
        } else {
          return ListView.separated(
            primary: false,
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return const SizedBox(height: 10);
            },
            itemBuilder: (context, index) {
              return ValueListenableBuilder<Box<CourseHive>>(
                  valueListenable: Hive.box<CourseHive>('progressCourse')
                      .listenable(keys: [courseList[index].id]),
                  builder: (context, box, widget) {
                    final courseResult = box.get(courseList[index].id);
                    return InkWell(
                      onTap: () {
                        ///We Neet Change Course Id
                        provider.changeCourseId(
                          id: courseList[index].id,
                        );
                        //We check this courseId is include,if not we add or not add again
                        if (box.get(courseList[index].id) == null) {
                          box.put(
                              courseList[index].id,
                              CourseHive(
                                courseId: courseList[index].id,
                                moduleMap: {},
                                courseProgress: 0.0,
                              ));
                          print(box.get(courseList[index].id));
                        }
                        ////Request This Course's Module
                        BlocProvider.of<DataBloc>(context).add(
                            GetCurrentCourseModules(
                                courseId: courseList[index].id));

                        ///Then Nevigate Course Detail Page
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CourseDetialPage(
                                  courseName:
                                      courseList[index].courseName ?? "Wrong",
                                  imageUrl: courseList[index].image ?? "",
                                )));
                      },
                      child: Card(
                          elevation: 10,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          color: courseResult == null
                              ? Colors.white
                              : Colors.green,
                          child: SizedBox(
                              height: size.height * 0.25,
                              width: size.width,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: size.width * 0.4,
                                    height: size.height * 0.25,
                                    child: CachedNetworkImage(
                                      imageUrl: courseList[index].image ?? "",
                                      fit: BoxFit.fill,
                                      progressIndicatorBuilder:
                                          (context, url, status) {
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

                                  ///
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                      right: 10,
                                    ),
                                    child: SizedBox(
                                      width: size.width * 0.5,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ///Title
                                          Text(
                                              courseList[index].courseName ??
                                                  "",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              )),

                                          ///Space
                                          const SizedBox(
                                            height: 10,
                                          ),

                                          ////Course Creater
                                          Text(
                                              courseList[index].description ??
                                                  "",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                              )),

                                          ///Space
                                          const SizedBox(
                                            height: 15,
                                          ),

                                          ///Total Files And Course Minutes
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                ///Creator
                                                const Text("Creator",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15,
                                                    )),

                                                ///Creator Name
                                                Text(
                                                    courseList[index].creator ??
                                                        "",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: const TextStyle(
                                                      color: Colors.black54,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15,
                                                    )),
                                              ])
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ))),
                    );
                  });
            },
            itemCount: courseList.length,
          );
        }
      }),
    );
  }
}
