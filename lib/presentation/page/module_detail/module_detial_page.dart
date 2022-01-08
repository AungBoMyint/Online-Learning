import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/application/function/bloc/function_bloc.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:online_learning/domain/data/theme.dart';
import 'package:online_learning/presentation/page/lesson_detail/lesson_detail_main_widget.dart';

class ModuleDetailPage extends ConsumerWidget {
  const ModuleDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return BlocConsumer<DataBloc, DataState>(
      builder: (context, stateData) {
        final provider = ref.watch(functionProvider);
        final lessonList = stateData.lessonList;
        if (lessonList.isNotEmpty) {
          return BlocConsumer<FunctionBloc, FunctionState>(
              listener: (context, state) {},
              builder: (context, state) {
                BlocProvider.of<DataBloc>(context).add(
                    GetCurrentLessonLessonContents(
                        lessonId: lessonList[state.lessonIndex].id));
                print("LessonIndex: ${state.lessonIndex}");

                ///We Need To Add This Lesson because This is the first page/
                provider.addLessonList(lessonList.length);
                return Scaffold(
                    backgroundColor: Colors.blue[50],
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
                      child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: ListView(
                            children: [
                              ///Module Title
                              Center(
                                child: Text(
                                  "Total Lesson: ${lessonList.length}",
                                  style: AppThemeData.darkText.headline1,
                                ),
                              ),

                              ///Space SizeBox
                              const SizedBox(height: 20),
                              ////Lesson List
                              SizedBox(
                                height: size.height * 0.8,
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  primary: false,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        ///Change LessonIndex into Function Bloc
                                        BlocProvider.of<FunctionBloc>(context)
                                            .add(ChangeLessonIndex(
                                                lessonIndex: index));
                                        //Then Request Content of This Lesson
                                        BlocProvider.of<DataBloc>(context)
                                            .add(GetCurrentLessonLessonContents(
                                          lessonId: lessonList[index].id,
                                        ));
                                      },
                                      child: Center(
                                        child: Container(
                                            color: state.lessonIndex == index
                                                ? Colors.blue
                                                : Colors.grey,
                                            child: ListTile(
                                              leading: CircleAvatar(
                                                radius: 20,
                                                backgroundColor:
                                                    state.lessonIndex == index
                                                        ? Colors.white
                                                        : Colors.black,
                                                child: Text(
                                                  "${index + 1}",
                                                  style: TextStyle(
                                                    color: state.lessonIndex ==
                                                            index
                                                        ? Colors.black
                                                        : Colors.white,
                                                  ),
                                                ),
                                              ),
                                              title: Text(
                                                  lessonList[index]
                                                          .lessonTitle ??
                                                      "",
                                                  style: TextStyle(
                                                    color: state.lessonIndex ==
                                                            index
                                                        ? Colors.white
                                                        : Colors.black,
                                                  )),
                                            )),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(height: 5);
                                  },
                                  itemCount: lessonList.length,
                                ),
                              ),
                            ],
                          )),
                    ),
                    //Body Lesson Content Detail
                    body: stateData.lessonContentList.isNotEmpty
                        ? PageView(
                            onPageChanged: (pos) {
                              print("Page: $pos");
                            },
                            physics: const NeverScrollableScrollPhysics(),
                            controller: provider.pageController,
                            children: lessonList.map<Widget>((lessonContent) {
                              return LessonDetailMainWidget(
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
