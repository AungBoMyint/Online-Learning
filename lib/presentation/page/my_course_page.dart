import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_learning/presentation/resuable_widgets/my_course_widgets/check_out.dart';
import 'package:online_learning/presentation/resuable_widgets/my_course_widgets/my_course_options.dart';
import 'package:online_learning/presentation/resuable_widgets/my_course_widgets/option_result.dart';

class MyCoursePage extends StatelessWidget {
  const MyCoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          elevation: 1,
          backgroundColor: Colors.white,
          title: const Text("My Course",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.search,
                color: Colors.black87,
                size: 25,
              ),
            )
          ],
        ),
        body: ListView(children: const [
          ///Space
          SizedBox(
            height: 15,
          ),
          //// My Course Options
          MyCourseOptionsWidget(),

          ///Space
          SizedBox(
            height: 20,
          ),

          ///CheckOut Advertize
          CheckOutNowWidget(),
          //Space
          SizedBox(
            height: 15,
          ),
          MyCourseOptionResultWidget(),
        ]));
  }
}
