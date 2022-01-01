import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_learning/application/function/bloc/function_bloc.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/domain/json/question/fill_blank/fill_blank.dart';

import '../function.dart';

class FillBlankWidget extends ConsumerWidget {
  final FillBlank fillBlank;
  const FillBlankWidget({Key? key, required this.fillBlank}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final provider = ref.watch(functionProvider);
    return Scaffold(
      bottomSheet: SizedBox(
        height: 50,
        width: size.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.blue),
          onPressed: () {
            ///Check The Answer is true or fasle

            if (provider.userEnterBlankText == fillBlank.trueAnswer) {
              //Show True Answer
              showTrueBottomSheet(
                context: context,
                callBack: () {
                  if (provider.pageController.page!.round() <
                      provider.lessonListLength - 1) {
                    BlocProvider.of<FunctionBloc>(context).add(
                        ChangeLessonIndex(
                            lessonIndex:
                                provider.pageController.page!.round() + 1));
                    provider.pageController.nextPage(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    Navigator.of(context).pop();
                  }
                  print("Continue");
                  Navigator.of(context).pop();
                },
                size: size,
              );
            } else {
              showWrongBottomSheet(
                context: context,
                callBack: () {
                  Navigator.of(context).pop();
                },
                size: size,
              );
            }
          },
          child: const Text("Submit",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              )),
        ),
      ),
      body: SizedBox(
        height: size.height * 0.9,
        child: ListView(
          shrinkWrap: true,
          primary: false,
          children: [
            //Space
            const SizedBox(height: 10),

            ///Question Title
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(fillBlank.question,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
            ),

            ///Space
            const SizedBox(height: 10),
            ////Blank To Answer
            Center(
              child: SizedBox(
                width: 10.0 * (fillBlank.trueAnswer.length),
                child: TextFormField(
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(
                        fillBlank.trueAnswer.length),
                  ],
                  enableSuggestions: false,
                  onChanged: (value) =>
                      provider.changeUserEnterBlankText(value),
                  //maxLength: fillBlank.trueAnswer.length,
                  decoration: const InputDecoration(
                      counterText: "",
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.blue,
                        width: 0,
                      ))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
