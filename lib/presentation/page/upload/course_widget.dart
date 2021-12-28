import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:online_learning/application/provider/provider.dart';

class CourseWidget extends ConsumerWidget {
  const CourseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey _formKey = GlobalKey<FormState>();
    // final watchProvider = ref.watch(courseProvider);
    final readProvider = ref.watch(courseProvider.notifier);
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: ListView(
        children: [
          ////Course Title
          Center(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.always,
              child: TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 3,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Course Title",
                    hintStyle: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    )),
                onChanged: (value) => readProvider.enterCourseTitle(value),
                /* validator: (value) => watchProvider.showCourseTitleError
                    ? watchProvider.courseTitleError
                    : null,*/
              ),
            ),
          ),
          ////Course Description
          Consumer(builder: (context, ref, child) {
            final provider = ref.watch(courseProvider.notifier);
            return TextFormField(
              maxLines: 5,
              minLines: 2,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Course Description",
              ),
              onChanged: (value) => provider.enterCourseDescription(value),
            );
          }),
          ////Add Course Image
          Consumer(
            builder: (context, ref, _) {
              final courseImage =
                  ref.watch(courseProvider.select((value) => value.image));
              final provider = ref.watch(courseProvider.notifier);
              if (courseImage == null) {
                return const SizedBox(height: 0, width: 0);
              } else {
                return Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.15,
                    right: size.width * 0.15,
                    top: 10,
                    bottom: 10,
                  ),
                  child: InkWell(
                    onTap: () async {
                      final XFile? image = await ImagePicker()
                          .pickImage(source: ImageSource.gallery);
                      provider.addImage(image!.path);
                    },
                    child: SizedBox(
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            child: Image.file(
                              File(
                                courseImage,
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                  ),
                );
              }
            },
          ),

          ///Module Widget Container
          Consumer(builder: (context, ref, child) {
            final module =
                ref.watch(moduleProvider.select((value) => value.module));
            if (module == null) {
              return const SizedBox(height: 0, width: 0);
            } else {
              return SizedBox(
                  height: 100,
                  child: Card(
                      elevation: 10,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(module.moduleTitle!,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      )));
            }
          }),
        ],
      ),
    );
  }
}
