import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/application/initial/bloc/initial_bloc.dart';
import 'package:online_learning/presentation/initial/initial.dart';
import 'package:online_learning/route.dart';

class InitialSplashPage extends StatelessWidget {
  const InitialSplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _pageController = PageController(initialPage: 0);

    return Scaffold(
        body: SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: PageView(
              onPageChanged: (pos) {
                ///We change dot indicator every time page is change
                BlocProvider.of<InitialBloc>(context)
                    .add(ChangeDotsIndicatorPosition(position: pos));
              },
              controller: _pageController,
              children: const <Widget>[
                ScreenOne(),
                ScreenTwo(),
              ],
            ),
          ),

          //Next Text Button
          BlocConsumer<InitialBloc, InitialState>(
            builder: (context, state) {
              if (state.currentPosition != 1) {
                return Positioned(
                  top: 0,
                  right: 5,
                  child: TextButton(
                    onPressed: () {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                );
              } else {
                return const SizedBox(
                  height: 0,
                );
              }
            },
            listener: (context, state) {},
          ),

          ///Get Start Button
          BlocConsumer<InitialBloc, InitialState>(
            builder: (context, state) {
              if (state.currentPosition == 1) {
                return Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[600],
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      )),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        RouteGenerator.loginPage,
                      );
                    },
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                );
              } else {
                return const SizedBox(
                  height: 0,
                );
              }
            },
            listener: (context, state) {},
          ),

          ///Circle Page Indicator Dot
          BlocConsumer<InitialBloc, InitialState>(
            builder: (context, state) {
              return Positioned(
                bottom: 60,
                child: SizedBox(
                    height: 50,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      primary: false,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            BlocProvider.of<InitialBloc>(context).add(
                                ChangeDotsIndicatorPosition(position: index));
                            _pageController.animateToPage(
                              index,
                              duration: const Duration(milliseconds: 100),
                              curve: Curves.easeInOut,
                            );

                            //////////////////
                          },
                          child: CircleAvatar(
                              radius: state.currentPosition == index ? 10 : 5,
                              backgroundColor: state.currentPosition == index
                                  ? Colors.blue[600]
                                  : Colors.grey),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 10,
                        );
                      },
                      itemCount: 2,
                    )),
              );
            },
            listener: (context, state) {},
          )
        ],
      ),
    ));
  }
}
