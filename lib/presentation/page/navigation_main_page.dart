import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/application/function/bloc/function_bloc.dart';
import 'package:online_learning/domain/mock/app/navigation_item.dart';
import 'package:online_learning/presentation/page/home_page.dart';

import 'account_setting_page.dart';
import 'book_mark_page.dart';
import 'my_course_page.dart';
import 'notification_page.dart';

class NavigationMainPage extends StatelessWidget {
  const NavigationMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _pageController = PageController(initialPage: 0);
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) => BlocProvider.of<FunctionBloc>(context).add(
          ChangeNavigationItem(itemId: index),
        ),
        children: const [
          HomePage(),
          BookMarkPage(),
          MyCoursePage(),
          NotificationPage(),
          AccountSettingPage(),
        ],
      ),
      bottomSheet: SizedBox(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: MockNavigationData.navigationItemList.map(
            (items) {
              return BlocConsumer<FunctionBloc, FunctionState>(
                builder: (context, state) {
                  return InkWell(
                    onTap: () {
                      //We Change Page View's Page
                      _pageController.animateToPage(
                        items.id,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );

                      ///We Also Change Navigation Item Id
                      BlocProvider.of<FunctionBloc>(context).add(
                        ChangeNavigationItem(itemId: items.id),
                      );
                    },
                    child: AnimatedContainer(
                      curve: Curves.easeInOut,
                      duration: const Duration(
                        milliseconds: 500,
                      ),
                      decoration: state.navigationItemId == items.id
                          ? const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Colors.blue,
                            )
                          : const BoxDecoration(),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              items.icon,
                              color: state.navigationItemId == items.id
                                  ? Colors.white
                                  : Colors.blue[600],
                            ),
                            //Space
                            if (state.navigationItemId == items.id) ...[
                              //Space
                              const SizedBox(
                                width: 10,
                              ),
                              /////
                              Text(
                                items.name,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ] else ...[
                              const SizedBox(
                                height: 0,
                                width: 0,
                              ),
                            ]
                          ],
                        ),
                      ),
                    ),
                  );
                },
                listener: (context, state) {},
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
