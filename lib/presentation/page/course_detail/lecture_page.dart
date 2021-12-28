import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/application/provider/function_provider.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/domain/hive/course_hive.dart';
import 'package:online_learning/route.dart';

class LecturePage extends ConsumerWidget {
  const LecturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(functionProvider);
    return BlocConsumer<DataBloc, DataState>(
      builder: (context, state) {
        if (state.moduleList == null || state.moduleList!.isEmpty) {
          return const Center(
              child: Text("Will get soon!",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )));
        } else {
          return ListView.separated(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  //TODO: Request Lesson List Of Current Module
                  BlocProvider.of<DataBloc>(context).add(
                      DataEvent.getCurrentModuleLessons(
                          moduleId: state.moduleList![index].id));
                  //TODO: we add this module into Current Course
                  provider.addThisModuleOrNot(
                      moduleid: state.moduleList![index].id);
                  //Then Change Module Length
                  provider.changeModuleLength(value: state.moduleList!.length);

                  ///TODO:Go To Module Detail contain Lesson and Content
                  Navigator.of(context).pushNamed(
                    RouteGenerator.moduleDetailPage,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),

                      ///Track Symbol
                      child: ListTile(
                        trailing: ValueListenableBuilder<Box<CourseHive>>(
                          valueListenable:
                              Hive.box<CourseHive>('progressCourse')
                                  .listenable(keys: [provider.courseId]),
                          builder: (context, box, widget) {
                            //If user have already enter this course,we need to show progress or
                            if (provider.isContainThisModule(
                                moduleId: state.moduleList![index].id)) {
                              return CircularProgressIndicator(
                                //Course Progress
                                value: box
                                    .get(provider.courseId)!
                                    .moduleMap[state.moduleList![index].id]!
                                    .moduleProgress,
                                strokeWidth: 7,
                                color: Colors.green,
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
                        leading: Container(
                          height: 50,
                          width: 50,
                          child: Center(

                              ///Number
                              child: Text("${index + 1}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ))),
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                        title:
                            ////Module Title
                            Text(state.moduleList![index].moduleTitle ?? "",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                      ),
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 10);
            },
            itemCount: state.moduleList!.length,
          );
        }
      },
      listener: (context, state) {
        //TODO: Do Something
      },
    );
  }
}
