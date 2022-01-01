import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_learning/application/function/bloc/function_bloc.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/domain/json/question/one_choice/one_choice.dart';
import 'package:online_learning/presentation/page/lesson_detail/function.dart';

class OneChoiceWidget extends ConsumerWidget {
  final OneChoice oneChoice;
  const OneChoiceWidget({Key? key, required this.oneChoice}) : super(key: key);

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
            if (provider.groupValue ==
                oneChoice.choiceItemMap.entries
                    .where((element) => element.value.isTrueAnswer == true)
                    .first
                    .key) {
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
              child: Text(oneChoice.question,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
            ),

            ///Space
            const SizedBox(height: 10),
            for (var item in oneChoice.choiceItemMap.entries) ...[
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: provider.groupValue == item.value.uid
                    ? Colors.blue
                    : Colors.white,
                child: RadioListTile<String>(
                  activeColor: Colors.white,
                  controlAffinity: ListTileControlAffinity.trailing,
                  value: item.value.uid,
                  groupValue: provider.groupValue,
                  onChanged: (value) => provider.changeGroupValue(value),
                  title: Text(
                    item.value.text ?? "Sorry Some Error Occur.",
                    style: TextStyle(
                      color: provider.groupValue == item.value.uid
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}
