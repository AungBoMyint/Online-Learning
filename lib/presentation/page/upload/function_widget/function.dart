import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/domain/json/course/module.dart';

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
