import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/application/function/bloc/function_bloc.dart';
import 'package:online_learning/domain/mock/app/mycourse_option.dart';

class MyCourseOptionsWidget extends StatelessWidget {
  const MyCourseOptionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: MockDataMyCourseOption.myCourseOptions.map(
            (courseOption) {
              return BlocConsumer<FunctionBloc, FunctionState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return InkWell(
                      onTap: () {
                        BlocProvider.of<FunctionBloc>(context).add(
                          ChangeMyCourseOption(courseOptionId: courseOption.id),
                        );
                      },
                      child: AnimatedContainer(
                        curve: Curves.easeInOut,
                        duration: const Duration(milliseconds: 500),
                        height: 50,
                        decoration: BoxDecoration(
                            color: state.courseOptionId == courseOption.id
                                ? Colors.blue
                                : Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 0.2,
                              ),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              //Space
                              const SizedBox(
                                width: 5,
                              ),
                              Icon(
                                courseOption.icon,
                                color: state.courseOptionId == courseOption.id
                                    ? Colors.white
                                    : courseOption.color,
                              ),
                              //Space
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                courseOption.title,
                                style: TextStyle(
                                  color: state.courseOptionId == courseOption.id
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            },
          ).toList(),
        ));
  }
}
