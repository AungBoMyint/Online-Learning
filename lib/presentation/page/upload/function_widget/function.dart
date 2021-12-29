import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/domain/json/course/module.dart';
import 'package:online_learning/domain/mock/app/question_type.dart';

import '../../../../route.dart';

////Add Module
void addModule(BuildContext context, String courseId) {
  showAnimatedDialog(
    curve: Curves.easeInOut,
    context: context,
    builder: (context) {
      final GlobalKey _formKey = GlobalKey<FormState>();
      return Consumer(builder: (context, ref, child) {
        final moduleError =
            ref.watch(moduleProvider.select((value) => value.moduleTextError));
        final moduleText =
            ref.watch(moduleProvider.select((value) => value.moduleText));
        final isErrorShow = ref
            .watch(moduleProvider.select((value) => value.showModuleTextError));
        final provider = ref.watch(moduleProvider);
        return AlertDialog(
          content: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: TextFormField(
              maxLines: 1,
              decoration: const InputDecoration(
                hintText: "Enter Module Title",
              ),
              onChanged: (value) => provider.enterModuleText(value),
              validator: (_) => isErrorShow ? moduleError : null,
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("Cancel"),
                ),
                TextButton(
                  onPressed: () {
                    provider.saveModule();
                    if (moduleText != null && moduleText.length > 5) {
                      //We Need To Upload This Module Into Firebase And then Pop
                      BlocProvider.of<DataBloc>(context).add(
                        UploadModuleToFirebase(
                          module: provider.module ?? Module.empty(),
                          courseId: courseId,
                        ),
                      );
                      Navigator.of(context).pop();
                    }
                  },
                  child: const Text("Save"),
                ),
              ],
            )
          ],
        );
      });
    },
  );
}

void addLesson(BuildContext context, String moduleId) {
  showAnimatedDialog(
    curve: Curves.bounceInOut,
    barrierDismissible: false,
    context: context,
    builder: (context) {
      final GlobalKey _formKey = GlobalKey<FormState>();
      return Consumer(builder: (context, ref, child) {
        final lessonTitle =
            ref.watch(lessonProvider.select((value) => value.lessonTitle));
        final lessonError =
            ref.watch(lessonProvider.select((value) => value.lessonError));
        final showError =
            ref.watch(lessonProvider.select((value) => value.showError));
        final provider = ref.watch(lessonProvider.notifier);
        final courProvider = ref.watch(courseProvider);
        ////IF Module IS NULL,we must show no module has defined (OR)
        ///Show Lesson Title BOX
        return AlertDialog(
          content: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.always,
            child: TextFormField(
              maxLines: 1,
              decoration: const InputDecoration(
                hintText: "Enter Lesson Title",
              ),
              onChanged: (value) => provider.enterLessonTitle(value),
              validator: (_) => showError ? lessonError : null,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                provider.saveLesson(moduleId);
                if (lessonTitle != null && lessonTitle.length > 5) {
                  ///We must clear lessonImageOrDescriptionOrVideo List that are previous state
                  provider.lessonImageOrDescriptionOrVideoList = [];

                  ///We must pre add lesson title text widget
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed(RouteGenerator.addLessonPage);
                }
              },
              child: const Text("Save"),
            )
          ],
        );
      });
    },
  );
}

///Add Content
void addContent(BuildContext context) {
  //Go To Add Content Page
  Navigator.of(context).pushNamed(
    RouteGenerator.addContentPage,
  );
}

//Show QuizType And Add Quiz Type
void showQuizTypeAndAddQuizType(BuildContext context, String moduleId) {
  showAnimatedDialog(
    context: context,
    builder: (context) {
      return Consumer(builder: (context, ref, child) {
        final provider = ref.watch(quizProvider);
        return AlertDialog(
          title: const Text("Choose Quiz Type!.",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )),
          content: ListView.separated(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  provider.saveModuleID(moduleId);
                  provider.saveQuestionType(QuestionType.type[index]);
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed(
                    RouteGenerator.addQuizPage,
                  );
                },
                //Each Quiz Type UI
                child: SizedBox(
                  height: 50,
                  child: AnimatedContainer(
                    height: 50,
                    duration: const Duration(milliseconds: 500),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: index == 0 ? Colors.green : Colors.yellow,
                    ),
                    child: Center(
                      child: Text(
                        QuestionType.type[index],
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: QuestionType.type.length,
          ),
        );
      });
    },
  );
}

///Show Module List To Add Content Or Quiz
void showDialogToChooseModuleListForEachFunction(
  BuildContext context,
  Function(String moduleId) callBack, {
  required String dialogTitle,
}) {
  ///Then Show Dialog To Choose Module to add Lesson
  showAnimatedDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(dialogTitle,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )),
        //Module List
        content: BlocConsumer<DataBloc, DataState>(
          builder: (context, state) {
            final moduleList = state.moduleList;
            if (moduleList != null) {
              return ListView.separated(
                itemBuilder: (context, index) {
                  return TextButton(
                    onPressed: () {
                      ///Pop This Dialog
                      Navigator.of(context).pop();

                      ///Then we add this module's ID into lessonProvider

                      ///Then We Call CallBack Function of Each Method this function
                      ///is called.
                      callBack(moduleList[index].id);
                    },
                    child: Text(moduleList[index].moduleTitle ?? "",
                        style: const TextStyle(
                          color: Colors.blue,
                        )),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 10);
                },
                itemCount: moduleList.length,
              );
            } else {
              return const Text("Here is no any module!.",
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
}
