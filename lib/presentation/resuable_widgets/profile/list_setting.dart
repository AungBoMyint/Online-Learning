import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_learning/application/auth/bloc/auth_bloc.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/domain/data/theme.dart';
import 'package:online_learning/domain/mock/app/setting.dart';
import 'package:online_learning/route.dart';

class ListSettingWidget extends StatelessWidget {
  const ListSettingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
      //TODO: DO SOMETHING
    }, builder: (context, state) {
      final userModal = state.userModal;
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
                            //Navigate Update Profile Page
                            Navigator.of(context).pushNamed(
                              RouteGenerator.updateProfile,
                            );
                          }
                          if (item.id == 2) {
                            //Navigate Course Upload Page
                            Navigator.of(context).pushNamed(
                              RouteGenerator.courseUploadPage,
                            );
                          }
                          if (item.id == 3) {
                            //Fire We Request CurrentUserOwnCourseList
                            BlocProvider.of<DataBloc>(context).add(
                              const GetCurrentUserOwnCourseList(),
                            );
                            //Navigate Current User's Own Course List
                            Navigator.of(context).pushNamed(
                              RouteGenerator.yourCreatedCouse,
                            );
                          }
                          if (item.id == 4) {
                            //First We Request CurrentUser's Own CourseList
                            BlocProvider.of<DataBloc>(context).add(
                              const GetCurrentUserOwnCourseList(),
                            );
                            //First We Show The Dialog Of currentcourselist to choose
                            showCurrentUserCourseList(context: context);
                          }
                        },
                        child: (item.id == 1 || item.id == 5)
                            ? settingContainer(item, size)
                            : userModal!.admin == false
                                ? const SizedBox(height: 0)
                                : settingContainer(item, size)),
                  );
                },
              ).toList(),
            ),
          ));
    });
  }

  void showCurrentUserCourseList({required BuildContext context}) {
    showAnimatedDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          clipBehavior: Clip.hardEdge,
          insetPadding:
              const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
          title: Text(
            "Choose Course",
            style: AppThemeData.darkText.headline1,
          ),
          content: BlocConsumer<DataBloc, DataState>(
            builder: (context, state) {
              final courseList = state.currentUserCourseList;
              if (courseList != null || courseList!.isNotEmpty) {
                return Consumer(
                  builder: (context, ref, child) {
                    final provider = ref.watch(updateCourseProvider);
                    return SizedBox(
                      height: 300,
                      width: 200,
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return InkWell(
                              onTap: () {
                                //We need to pre add this course into provider
                                provider.addCourse(courseList[index]);
                                //Then pop this route
                                Navigator.of(context).pop();
                                //Then navigate courseUpdatePage
                                Navigator.of(context).pushNamed(
                                  RouteGenerator.updateCourse,
                                );
                              },
                              child: Card(
                                color: Colors.grey[350],
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                )),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      courseList[index].courseName ?? "",
                                      style: AppThemeData.darkText.subtitle1!
                                          .copyWith(
                                        fontWeight: FontWeight.normal,
                                      )),
                                ),
                              ));
                        },
                        separatorBuilder: (context, state) {
                          return const SizedBox(
                            height: 10,
                          );
                        },
                        itemCount: courseList.length,
                      ),
                    );
                  },
                );
              } else {
                return const Text("Here's is no course!",
                    style: TextStyle(
                      color: Colors.red,
                    ));
              }
            },
            listener: (context, state) {
              //TODO:DO SOMETHING
            },
          ),
        );
      },
    );
  }
}

Widget settingContainer(Item item, Size size) {
  return Container(
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
  );
}
