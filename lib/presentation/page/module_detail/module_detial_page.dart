import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/application/function/bloc/function_bloc.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/presentation/page/lesson_detail/lesson_detail_page.dart';

class ModuleDetailPage extends ConsumerWidget {
  const ModuleDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return BlocConsumer<DataBloc, DataState>(
      builder: (context, stateData) {
        final provider = ref.watch(functionProvider);
        final _pageController = PageController(initialPage: 0);
        final lessonList = stateData.lessonList;
        if (lessonList.isNotEmpty) {
          return BlocConsumer<FunctionBloc, FunctionState>(
              listener: (context, state) {},
              builder: (context, state) {
                BlocProvider.of<DataBloc>(context).add(
                    GetCurrentLessonLessonContents(
                        lessonId: lessonList[state.lessonIndex].id));

                ///We Need To Add This Lesson because This is the first page/
                /////////
                provider.addThisLessonOrNot(
                  lessonId: lessonList[0].id,
                  lessonLength: lessonList.length,
                );
                return Scaffold(
                    backgroundColor: Colors.blue[50],
                    //Bottom Page Controller To Change page
                    bottomSheet: SizedBox(
                        height: 50,
                        width: size.width,
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              //We Change Next PageView
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.elasticInOut,
                              );
                              //Then We Check Add Or Not This Lesson
                              provider.addThisLessonOrNot(
                                lessonId: lessonList[
                                        _pageController.page!.round() + 1]
                                    .id,
                                lessonLength: lessonList.length,
                              );

                              print(_pageController.page!.round() + 1);

                              ///Change LessonIndex into Function Bloc
                              BlocProvider.of<FunctionBloc>(context).add(
                                  ChangeLessonIndex(
                                      lessonIndex:
                                          _pageController.page!.round() + 1));
                            },
                            child: const Text("Next",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                )),
                          ),
                        )),
                    appBar: AppBar(
                      iconTheme: const IconThemeData(color: Colors.blue),
                      backgroundColor: Colors.white,

                      ///Lesson Title
                      title: Text(
                          lessonList[state.lessonIndex].lessonTitle ?? "Wrong",
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      centerTitle: true,
                    ),

                    //Drawer
                    drawer: Drawer(
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              ///............///////
                              provider.addThisLessonOrNot(
                                lessonId: lessonList[index].id,
                                lessonLength: lessonList.length,
                              );

                              ///Change LessonIndex into Function Bloc
                              BlocProvider.of<FunctionBloc>(context)
                                  .add(ChangeLessonIndex(lessonIndex: index));
                              //Then Request Content of This Lesson
                              BlocProvider.of<DataBloc>(context)
                                  .add(GetCurrentLessonLessonContents(
                                lessonId: lessonList[index].id,
                              ));
                            },
                            child: Container(
                                color: Colors.green,
                                child: ListTile(
                                  title:
                                      Text(lessonList[index].lessonTitle ?? "",
                                          style: TextStyle(
                                            color: state.lessonIndex == index
                                                ? Colors.white
                                                : Colors.black,
                                          )),
                                )),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 10);
                        },
                        itemCount: lessonList.length,
                      ),
                    ),
                    //Body Lesson Content Detail
                    body: stateData.lessonContentList != null
                        ? PageView(
                            physics: const NeverScrollableScrollPhysics(),
                            controller: _pageController,
                            children: lessonList.map<Widget>((lessonContent) {
                              return LessonDetailPage(
                                lessonContent: stateData.lessonContentList,
                              );
                            }).toList())
                        : const Center(child: Text("Something is wrong!")));
              });
        } else {
          return const Scaffold(body: Center(child: Text("Will get soon!...")));
        }
      },
      listener: (context, state) {
        //TODO: Do Something
      },
    );
  }
}
