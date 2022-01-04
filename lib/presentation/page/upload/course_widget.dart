import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:online_learning/application/provider/course_provider.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/domain/data/theme.dart';

class CourseWidget extends ConsumerWidget {
  const CourseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(courseProvider);
    final size = MediaQuery.of(context).size;
    return Form(
      child: ListView(
        children: [
          ///DropDown Tag
          DropdownButton<String>(
            icon: const Icon(
              FontAwesomeIcons.caretDown,
              color: Colors.black,
            ),
            //value: provider.tag,
            onChanged: (value) => provider.changeTag(value),
            items: [
              "Mobile Development",
              "Web Development",
              "Machine Learning",
              "Internet",
              "Markting",
              "Computer Science"
            ].map<DropdownMenuItem<String>>((item) {
              return DropdownMenuItem<String>(
                child: Text(item),
              );
            }).toList(),
          ),
          //DropDown Type
          DropdownButton<String>(
            icon: const Icon(
              FontAwesomeIcons.caretDown,
              color: Colors.black,
            ),
            //value: provider.tag,
            onChanged: (value) => provider.changeType(value),
            items: [
              "Beginner",
              "Intermediate",
              "Advance",
            ].map<DropdownMenuItem<String>>((item) {
              return DropdownMenuItem<String>(
                child: Text(item),
              );
            }).toList(),
          ),
          //Couser Title
          TextField(
            decoration: const InputDecoration(
              hintText: "Enter Title",
            ),
            maxLines: 2,
            onChanged: (value) => provider.enterCourseTitle(value),
          ),
          //Couse Description
          TextField(
            decoration: const InputDecoration(
              hintText: "Enter Description",
            ),
            maxLines: 2,
            onChanged: (value) => provider.enterCourseDescription(value),
          ),
          //Couse Overview
          TextField(
            decoration: const InputDecoration(
              hintText: "Enter Overview",
            ),
            maxLines: 2,
            onChanged: (value) => provider.enterCourseOverview(value),
          ),
          //Couser Image
          provider.image == null
              ? Stack(children: [
                  SizedBox(
                    height: size.height * 0.3,
                    width: size.width * 0.5,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  //Image Button
                  Center(
                      child: IconButton(
                    onPressed: () => _getPhoto(context, provider),
                    icon: const Icon(FontAwesomeIcons.image,
                        color: Colors.white, size: 100),
                  )),
                ])
              : ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.file(File(provider.image ?? "")),
                ),

          //Course Preview
          coursePreview(provider, size),
        ],
      ),
    );
  }

  //Pick Photo
  void _getPhoto(BuildContext context, CourseProvider provider) async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    provider.addImage(image!.path);
  }

  Widget coursePreview(CourseProvider provider, Size size) {
    return Card(
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
                  child: provider.image == null
                      ? const Icon(FontAwesomeIcons.image, size: 100)
                      : Image.file(File(provider.image ?? "")),
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
                        Text(provider.courseTitle ?? "",
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
                        Text(provider.courseDescription ?? "",
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

                        ///Leaners
                        Text(
                          "Learners (0)",
                          style: AppThemeData.darkText.headline3,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
