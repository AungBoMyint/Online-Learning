import 'package:flutter/material.dart';
import 'package:online_learning/presentation/resuable_widgets/profile/custom_user_profile_appbar.dart';
import 'package:online_learning/presentation/resuable_widgets/profile/profile.dart';
import 'package:online_learning/presentation/resuable_widgets/profile/setting_main_widget.dart';

class AccountSettingPage extends StatelessWidget {
  const AccountSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.blue[50],
          body: SafeArea(
            child: ListView(
              children: [
                ///Top Profile
                CustomUserProfileAppBar(size: size),
                /////
                SizedBox(
                  height: size.height * 0.6,
                  child: const TabBarView(
                    children: <Widget>[
                      ///Settings Main Widget
                      SettingMainWidget(),

                      ///Created Course Wiget
                      YourCreatedCourseWidget(),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
