import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_learning/application/provider/provider.dart';

class FillBlankWidget extends ConsumerWidget {
  const FillBlankWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(quizProvider);
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 10,
          right: 20,
          bottom: 5,
        ),
        child: TextField(
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          maxLines: 5,
          decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Enter Question",
              hintStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 20,
              )),
          onChanged: (value) => provider.changeQuestionText(value),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: TextField(
          maxLength: 20,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
          decoration: const InputDecoration(
            hintText: "Enter answer that will be blank in question.",
            border: InputBorder.none,
          ),
          onChanged: (value) => provider.changeBlankTrueAnswer(value),
        ),
      ),
    ]);
  }
}
