import 'package:flutter/material.dart';
import 'package:online_learning/domain/data/theme.dart';
import 'package:online_learning/domain/mock/app/setting.dart';
import 'package:online_learning/route.dart';

class ListSettingWidget extends StatelessWidget {
  const ListSettingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        height: size.height * 0.5,
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            children: SettingItem.items.map(
              (item) {
                return Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: InkWell(
                    onTap: () {
                      //Navigate Each Route
                      if (item.id == 1) {
                        Navigator.of(context).pushNamed(
                          RouteGenerator.updateProfile,
                        );
                      }
                      if (item.id == 2) {
                        Navigator.of(context).pushNamed(
                          RouteGenerator.courseUploadPage,
                        );
                      }
                      if (item.id == 3) {
                        Navigator.of(context).pushNamed(
                          RouteGenerator.yourCreatedCouse,
                        );
                      }
                    },
                    child: Container(
                      height: 50,
                      width: size.width,
                      color: Colors.white,
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              item.prefixIcon,
                              color: Colors.black,
                            ),
                            Text(
                              item.text,
                              style: AppThemeData.darkText.headline3,
                            ),
                            Icon(
                              item.suffixIcon,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      )),
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ));
  }
}
