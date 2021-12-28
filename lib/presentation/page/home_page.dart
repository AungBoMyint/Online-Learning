import 'package:flutter/material.dart';
import 'package:online_learning/presentation/resuable_widgets/home_appbar.dart';
import 'package:online_learning/presentation/resuable_widgets/home_choose_option.dart';
import 'package:online_learning/presentation/resuable_widgets/home_search.dart';
import 'package:online_learning/presentation/resuable_widgets/option_result_courses.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: HomeTopAppBarWidget(
        width: size.width,
      ),
      body: ListView(
        children: const [
          //Space
          SizedBox(
            height: 20,
          ),
          //Search Widget
          HomeSearchWidget(),
          //Space
          SizedBox(
            height: 10,
          ),
          //Course Text
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text("Courses",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
          ),

          ///Space
          SizedBox(
            height: 5,
          ),

          ///Home Choose Option Grid View
          HomeChooseOptionWidget(),

          ///Space
          SizedBox(
            height: 5,
          ),

          ///Option Result Courses Grid View
          OptionResultCourses()
        ],
      ),
    );
  }
}
