import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/application/provider/lesson_provider.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/domain/json/course/lesson.dart';
import 'package:online_learning/domain/mock/app/lesson_bottomsheet.dart';
import 'package:online_learning/presentation/page/upload/function_widget/function.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddLessonPage extends ConsumerWidget {
  const AddLessonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lessonTitle = ref.watch(
      lessonProvider.select((value) => value.lessonTitle),
    );
    final lessonImageOrDescriptionOrVideo = ref.watch(lessonProvider.select(
      (value) => value.lessonImageOrDescriptionOrVideoList,
    ));
    final provider = ref.watch(lessonProvider);
    final toConfirm = ref.watch(lessonProvider.notifier);
    return WillPopScope(
      onWillPop: () async {
        Completer<bool> _completer = Completer<bool>();
        if (lessonImageOrDescriptionOrVideo.isNotEmpty) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("Discard Lesson!"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      _completer.complete(false);
                    },
                    child: const Text("Keep Adding"),
                  ),
                  TextButton(
                    onPressed: () {
                      ///We need to Remove this lesson from module[0] because we have already
                      ///define this lesson when user save lesson Title
                      ///We Also Delete LessonImageOrDescription List
                      toConfirm
                          .removeCurrentLesson(toConfirm.lesson?.id ?? "id");
                      Navigator.of(context).pop();
                      _completer.complete(true);
                    },
                    child: const Text("Discard"),
                  )
                ],
              );
            },
          );
        } else {
          ///We need to Remove this lesson from module[0] because we have already
          ///define this lesson when user save lesson Title
          //////We Also Delete LessonImageOrDescription List
          toConfirm.removeCurrentLesson(toConfirm.lesson?.id ?? "id");
          _completer.complete(true);
        }
        return _completer.future;
      },
      child: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Text(
            lessonTitle ?? "Undefined Lesson Text",
            style: const TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: [
            Consumer(
              builder: (context, ref, child) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  onPressed: lessonImageOrDescriptionOrVideo.isEmpty
                      ? null
                      : () {
                          //TODO: We must save This Lesson into Current Module
                          //toConfirm.confirmLesson();
                          BlocProvider.of<DataBloc>(context).add(
                            UploadLessonToFirebase(
                              listLesson: provider.lesson ?? Lesson.empty(),
                              moduleId: provider.moduleUid ?? "",
                            ),
                          );
                          print("Lesson: ${provider.lesson}");
                          BlocProvider.of<DataBloc>(context)
                              .add(UploadLessonImageOrVideoOrDescription(
                            lesson:
                                provider.lessonImageOrDescriptionOrVideoList,
                            lessonId: provider.lessonId ?? "",
                          ));
                          //Then
                          //TODO: We must pop this route
                          Navigator.of(context).pop();
                        },
                  child: const Text(
                    "Upload",
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
          ],
        ),
        body: SlidingUpPanel(
          panel: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: LessonBottomSheet.items.map(
                (item) {
                  final id = item.id;
                  return InkWell(
                    onTap: () => id == 1
                        ? _addExercise(context)
                        : id == 2
                            ? _getPhoto(context, provider)
                            : id == 3
                                ? addContent(context)
                                : _addVideoLink(context),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Row(
                        children: [
                          item.icons,
                          const SizedBox(width: 20),
                          Text(item.text,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ))
                        ],
                      ),
                    ),
                  );
                },
              ).toList()),
          body: ListView(
              children: lessonImageOrDescriptionOrVideo.map((item) {
            final image = item.image;
            final content = item.content;
            if (image != null) {
              return Image.file(File(image), width: 200, height: 200);
            }
            if (content != null) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 5,
                ),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: HexColor(content.color),
                  child: Text(content.content),
                ),
              );
            }
            return Container();
          }).toList()),
        ),
      ),
    );
  }

  void _addExercise(BuildContext context) {}

  void _getPhoto(BuildContext context, LessonProvider provider) async {
    final List<XFile>? images = await ImagePicker().pickMultiImage();
    provider.addImagelist(images);
  }

  _addVideoLink(BuildContext context) {}
}
