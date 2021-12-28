import 'package:flutter/material.dart';
import 'package:online_learning/presentation/page/course_detail/review_page.dart';

import 'custom_course_detail_appbar.dart';
import 'lecture_page.dart';

class CourseDetialPage extends StatelessWidget {
  final String imageUrl;
  final String courseName;
  const CourseDetialPage(
      {Key? key, required this.courseName, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeS = MediaQuery.of(context).size;
    final size = Size(double.infinity, sizeS.height * 0.4);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomCourseDetailAppBar(
          screenSize: size,
          imageUrl: imageUrl,
          courseName: courseName,
        ),
        body: const TabBarView(
          children: [
            //Lecture Page
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: LecturePage(),
            ),
            ReviewPage(),
          ],
        ),
      ),
    );
  }
}
