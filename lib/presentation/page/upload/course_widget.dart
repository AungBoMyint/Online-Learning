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
        shrinkWrap: true,
        children: [
          //Space
          const SizedBox(height: 5),
          //DropDown Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ///DropDown Tag
              Card(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(20),
                )),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: DropdownButton<String>(
                    underline: const SizedBox(height: 0),
                    value: provider.tag,
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
                        value: item,
                        child: Text(item,
                            style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            )),
                      );
                    }).toList(),
                  ),
                ),
              ),
              //DropDown Type
              Card(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(20),
                )),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: DropdownButton<String>(
                    underline: const SizedBox(height: 0),
                    value: provider.type,
                    icon: const Icon(
                      FontAwesomeIcons.caretDown,
                      color: Colors.black,
                    ),
                    //value: provider.tag,
                    onChanged: (valuePut) => provider.changeType(valuePut),
                    items: [
                      "Beginner",
                      "Intermediate",
                      "Advance",
                    ].map<DropdownMenuItem<String>>((item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item,
                            style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            )),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
          //Couser Title
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: TextField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Title",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  )),
              maxLines: null,
              onChanged: (value) => provider.enterCourseTitle(value),
            ),
          ),
          //Couse Description
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: TextField(
              style: const TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontSize: 16,
              ),
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Description",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  )),
              maxLines: null,
              onChanged: (value) => provider.enterCourseDescription(value),
            ),
          ),
          //Couse Overview
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: TextField(
              style: const TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontSize: 16,
              ),
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Overview",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  )),
              maxLines: null,
              onChanged: (value) => provider.enterCourseOverview(value),
            ),
          ),
          //Space Between
          const SizedBox(
            height: 10,
          ),
          //Couser Image
          Stack(children: [
            Center(
              child: InkWell(
                onTap: () => _getPhoto(context, provider),
                child: SizedBox(
                  height: size.height * 0.3,
                  width: size.width * 0.7,
                  child: provider.image == null
                      ? Container(
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        )
                      : Image.file(
                          File(provider.image ?? ""),
                          height: size.height * 0.3,
                          width: size.width * 0.7,
                        ),
                ),
              ),
            ),
            //Image Button
            provider.image == null
                ? Align(
                    alignment: Alignment.bottomCenter,
                    child: IconButton(
                      onPressed: () => _getPhoto(context, provider),
                      icon: const Icon(FontAwesomeIcons.image,
                          color: Colors.white, size: 50),
                    ))
                : const SizedBox(height: 0)
          ]),
          const SizedBox(height: 10),
          //Preview
          Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Preview:",
                style: AppThemeData.darkText.headline3,
              )),
          //Course Preview
          coursePreview(provider, size),
          const SizedBox(height: 10),
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
            height: size.height * 0.2,
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
                      : ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          child: Image.file(
                            File(provider.image ?? ""),
                            fit: BoxFit.cover,
                          ),
                        ),
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
