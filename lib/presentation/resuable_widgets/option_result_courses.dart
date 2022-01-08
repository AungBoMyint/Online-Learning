import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/presentation/page/course_detail/course_detail_page.dart';

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
        if (courseList == null || courseList.isEmpty) {
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
              return InkWell(
                onTap: () {
                  ///We Neet Change Course Id
                  provider.changeCourseId(
                    id: courseList[index].id,
                  );
                  //We check this courseId is include,if not we add or not add again
                  ////Request This Course's Module
                  BlocProvider.of<DataBloc>(context).add(
                      GetCurrentCourseModules(courseId: courseList[index].id));

                  ///Then Nevigate Course Detail Page
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CourseDetialPage(
                            courseDescription:
                                courseList[index].description ?? "Wrong",
                            courseName: courseList[index].courseName ?? "Wrong",
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
                    child: SizedBox(
                        height: size.height * 0.25,
                        width: size.width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ///Title
                                    Text(courseList[index].courseName ?? "",
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
                                    Text(courseList[index].description ?? "",
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
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          ///Creator
                                          Text("Creator",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold,
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
            },
            itemCount: courseList.length,
          );
        }
      }),
    );
  }
}
