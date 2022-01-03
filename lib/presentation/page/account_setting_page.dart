import 'package:flutter/material.dart';
import 'package:online_learning/domain/data/theme.dart';
import 'package:online_learning/presentation/resuable_widgets/profile/custom_user_profile_appbar.dart';
import 'package:online_learning/presentation/resuable_widgets/profile/list_setting.dart';

class AccountSettingPage extends StatelessWidget {
  const AccountSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.blue[50],
        body: SafeArea(
          child: ListView(
            children: [
              ///Top Profile
              CustomUserProfileAppBar(size: size),
              /////Body Setting List Widget
              const ListSettingWidget(),
              ////LogOut Button
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      //TODO: Logout
                    },
                    child: Text(
                      "LogOut",
                      style: AppThemeData.darkText.headline3!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
