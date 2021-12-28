import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/application/function/bloc/function_bloc.dart';
import 'package:online_learning/domain/json/choose_option.dart';

class HomeChooseOptionWidget extends StatelessWidget {
  const HomeChooseOptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        height: size.height * 0.2,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Wrap(
            children: MockData.chooseOptionList.map(
              (chooseOption) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BlocConsumer<FunctionBloc, FunctionState>(
                      listener: (context, state) {},
                      builder: (context, state) {
                        return InkWell(
                          onTap: () {
                            BlocProvider.of<FunctionBloc>(context).add(
                              ChangeChooseOption(optionId: chooseOption.id),
                            );
                          },
                          child: AnimatedContainer(
                            curve: Curves.easeInOut,
                            duration: const Duration(milliseconds: 500),
                            height: 50,
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                                color: state.optionId == chooseOption.id
                                    ? Colors.blue[600]
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
                            child: Row(
                              children: [
                                //Space
                                const SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  chooseOption.icon,
                                  color: state.optionId == chooseOption.id
                                      ? Colors.white
                                      : chooseOption.color,
                                ),
                                //Space
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  chooseOption.title,
                                  style: TextStyle(
                                    color: state.optionId == chooseOption.id
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                );
              },
            ).toList(),
          ),
        ));
  }
}
