import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_learning/application/function/bloc/function_bloc.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/domain/json/question/multiple_choice/multiple_choice.dart';

import '../function.dart';

class CheckBoxWidget extends ConsumerWidget {
  final MultipleChoice multipleChoice;
  const CheckBoxWidget({Key? key, required this.multipleChoice})
      : super(key: key);

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
            //First we drag true answer of Original Map
            final originalTrueMap = multipleChoice.choiceItemMap.entries.where(
              (element) => element.value.isTrueAnswer == true,
            );
            final userTrueMap = provider.userTrueMap.entries
                .where((element) => element.value == true);
            print("UserTrueMap: $userTrueMap");
            print("OriginalTrueMap: $originalTrueMap");
            //Then we loop this map and check it match
            var totalTrueAnswer = 0;
            for (var userTrueMap in userTrueMap) {
              for (var oriTrue in originalTrueMap) {
                if (userTrueMap.key == oriTrue.key) {
                  totalTrueAnswer++;
                }
              }
            }
            if (originalTrueMap.length == totalTrueAnswer) {
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
              child: Text(multipleChoice.question,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
            ),

            ///Space
            const SizedBox(height: 10),
            for (var item in multipleChoice.choiceItemMap.entries) ...[
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: provider.userTrueMap[item.key] ?? false
                    ? Colors.blue
                    : Colors.white,
                child: CheckboxListTile(
                  activeColor: Colors.white,
                  value: provider.userTrueMap[item.key],
                  onChanged: (value) =>
                      provider.addMapBoolean(item.key, value ?? false),
                  title: Text(
                    item.value.text ?? "Sorry Some Error Occur.",
                    style: TextStyle(
                      color: provider.userTrueMap[item.key] ?? false
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
