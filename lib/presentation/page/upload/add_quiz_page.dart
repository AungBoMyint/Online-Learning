import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_learning/application/provider/provider.dart';

class AddQuizPage extends ConsumerWidget {
  const AddQuizPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final provider = ref.watch(quizProvider);
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text("Upload A Quiz!"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              //Mian QuestionField

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

              //Choice Item
              if (provider.choiceItemMap.isEmpty) ...[
                const Center(child: Text("Add Some Items..."))
              ] else ...[
                ///Title Right is Item Text and Left is Select True Answer
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text("Item Text",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          )),
                      Text("Select True Answer",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          )),
                    ]),

                ///Space
                const SizedBox(height: 10),
                for (var item in provider.choiceItemMap.entries) ...[
                  Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: provider.groupValue == item.value.uid
                          ? Colors.blue
                          : Colors.white,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ///Choice Item Input Text
                            SizedBox(
                              width: size.width * 0.5,
                              child: TextField(
                                style: TextStyle(
                                  color: provider.groupValue == item.value.uid
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter Choice Text",
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 17,
                                  ),
                                ),
                                onChanged: (value) =>
                                    provider.changeChoiceItemText(
                                  value: value,
                                  key: item.key,
                                ),
                              ),
                            ),
                            ////Is True Answer Or Not Radio Button
                            Radio<String>(
                              activeColor: Colors.white,
                              value: item.value.uid,
                              groupValue: provider.groupValue,
                              onChanged: (String? value) {
                                //Change Group Value
                                provider.changeGroupValue(value ?? "");
                              },
                            ),
                          ]))
                ]
              ]
            ],
          ),
        ),
      ),
      //Button Sheet AddItem button and Upload Question Button
      bottomSheet: SizedBox(
          width: size.width,
          height: 70,
          child: Card(
            elevation: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //Add Item Button
                TextButton(
                  onPressed: () {
                    ///TODO:Add ChoiceItem TextField Widget
                    provider.addItem();
                  },
                  child: const Text("Add Item",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                ),
                ////Upload Question Button Into Firestore
                ElevatedButton(
                  onPressed: provider.choiceItemMap.length < 2 ||
                          provider.question == null
                      ? null
                      : () {
                          //TODO: Add This Question INTO FirebaseFirestore
                          provider.saveQuestion();
                          Navigator.of(context).pop();
                        },
                  child: const Text("Upload",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                )
              ],
            ),
          )),
    );
  }
}
