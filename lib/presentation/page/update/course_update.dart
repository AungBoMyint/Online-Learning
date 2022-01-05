import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/application/provider/update_course.dart';
import 'package:online_learning/domain/data/theme.dart';
import 'package:online_learning/domain/json/course/course.dart';

class UpdateCourse extends ConsumerStatefulWidget {
  final Course course;
  const UpdateCourse({Key? key, required this.course}) : super(key: key);

  @override
  _UpdateCourseState createState() => _UpdateCourseState();
}

class _UpdateCourseState extends ConsumerState<UpdateCourse> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _overviewController = TextEditingController();

  @override
  void initState() {
    _titleController.text = widget.course.courseName ?? "";
    _descriptionController.text = widget.course.description ?? "";
    _overviewController.text = widget.course.overview ?? "";
    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _overviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = ref.watch(updateCourseProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Update Course!",
          style: AppThemeData.darkText.headline1,
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.blue, shape: RoundedRectangleBorder()),
            onPressed: () {
              //Update Course Into Firebase
              BlocProvider.of<DataBloc>(context).add(DataEvent.updateCourse(
                course: widget.course.copyWith(
                  courseName: _titleController.text,
                  description: _descriptionController.text,
                  overview: _overviewController.text,
                  tag: provider.tag,
                  type: provider.type,
                ),
                courseImage: provider.image,
              ));

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
      body: Form(
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
                controller: _titleController,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Title",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    )),
                maxLines: null,
              ),
            ),
            //Couse Description
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                controller: _descriptionController,
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
              ),
            ),
            //Couse Overview
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextField(
                controller: _overviewController,
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
                        ? Image.network(
                            widget.course.image ?? "",
                            height: size.height * 0.3,
                            width: size.width * 0.7,
                          )
                        : Image.file(
                            File(provider.image ?? ""),
                            height: size.height * 0.3,
                            width: size.width * 0.7,
                          ),
                  ),
                ),
              ),
            ]),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  //Pick Photo
  void _getPhoto(BuildContext context, UpdateCourseProvider provider) async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    provider.addImage(image?.path ?? "");
  }
}
