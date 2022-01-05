import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide Provider;
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/domain/data/theme.dart';
import 'package:online_learning/domain/json/course/course.dart';
import 'package:online_learning/presentation/page/upload/course_widget.dart';

class UploadCoursePage extends ConsumerWidget {
  const UploadCoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(courseProvider);
    final size = MediaQuery.of(context).size;
    return BlocListener<DataBloc, DataState>(
      listener: (context, state) {
        if (state.isCourseUpload) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            duration: Duration(seconds: 3),
            content: Text("Uploading......"),
          ));
        }
        state.failureOrSuccess.fold(() => null, (either) {
          either.fold((l) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              backgroundColor: Colors.red,
              duration: Duration(seconds: 3),
              content: Text("Something is wrong......",
                  style: TextStyle(color: Colors.white)),
            ));
          }, (r) => null);
        });
      },
      child: WillPopScope(
        onWillPop: () async {
          final Completer<bool> _completer = Completer<bool>();
          if (provider.courseTitle != null ||
              provider.courseDescription != null ||
              provider.courseOverview != null ||
              provider.image != null) {
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
            _completer.complete(true);
          }
          return _completer.future;
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Create Course!",
              style: AppThemeData.darkText.headline1,
            ),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue, shape: RoundedRectangleBorder()),
                onPressed: () {
                  provider.uploadCourse();
                  //Upload Course Into Firebase
                  BlocProvider.of<DataBloc>(context).add(UploadCourseToFirebase(
                      course: provider.course ?? Course.empty()));

                  //Pop this route
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Upload",
                  style: AppThemeData.darkText.subtitle1!
                      .copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
          body: const CourseWidget(),
        ),
      ),
    );
  }
}
