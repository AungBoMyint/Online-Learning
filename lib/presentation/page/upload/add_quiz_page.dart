import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/domain/json/course/lesson.dart';
import 'package:online_learning/domain/mock/app/question_type.dart';
import 'package:online_learning/presentation/page/upload/fill_blank_widget.dart';
import 'package:online_learning/presentation/page/upload/multiple_choice_widget.dart';
import 'package:online_learning/presentation/page/upload/one_choice_widget.dart';

class AddQuizPage extends ConsumerWidget {
  const AddQuizPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final provider = ref.watch(quizProvider);
    return BlocListener<DataBloc, DataState>(
      listener: (context, state) {
        if (state.isCourseUpload) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.blue,
            duration: Duration(seconds: 5),
            content:
                Text("Uploading......", style: TextStyle(color: Colors.white)),
          ));
        }
      },
      child: Scaffold(
        appBar: AppBar(
          titleTextStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: const Text("Upload A Quiz!"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: provider.type == QuestionType.type[0]
                ? const OneChoiceWidget()
                : provider.type == QuestionType.type[1]
                    ? const MultipleChoiceWidget()
                    : const FillBlankWidget(),
          ),
        ),
        //Button Sheet AddItem button and Upload Question Button
        bottomSheet: SizedBox(
            width: size.width,
            height: 70,
            child: Card(
              elevation: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Add Item Button
                  TextButton(
                    onPressed: () {
                      ///TODO:Add ChoiceItem TextField Widget
                      provider.addItem();
                    },
                    child: const Text("Add Item",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )),
                  ),
                  ////Upload Question Button Into Firestore
                  ElevatedButton(
                    onPressed: provider.question == null
                        ? null
                        : () {
                            //TODO: Add This Question INTO FirebaseFirestore
                            provider.saveQuestion();
                            //Then we triger event to store data into Firestore
                            final bloc = BlocProvider.of<DataBloc>(context);
                            bloc.add(
                              UploadLessonToFirebase(
                                listLesson: provider.lesson ?? Lesson.empty(),
                                moduleId: provider.moduleId ?? "error",
                              ),
                            );
                            bloc.add(
                              UploadLessonImageOrVideoOrDescription(
                                lesson: provider
                                    .lessonImageOrDescriptionOrVideoList,
                                lessonId: provider.lesson!.id,
                              ),
                            );
                            Navigator.of(context).pop();
                          },
                    child: const Text("Upload",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
