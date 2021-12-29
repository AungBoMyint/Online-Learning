import 'package:flutter/material.dart';
import 'package:online_learning/domain/json/course/lesson.dart';
import 'package:online_learning/domain/json/course/lesson_image_or_description_or_video.dart';
import 'package:online_learning/domain/json/question/choice_item.dart';
import 'package:online_learning/domain/json/question/multiple_choice/multiple_choice.dart';
import 'package:online_learning/domain/json/question/one_choice/one_choice.dart';
import 'package:online_learning/domain/mock/app/question_type.dart';
import 'package:uuid/uuid.dart';

class QuizProvider extends ChangeNotifier {
  QuizProvider();

//QuestionType String
  String? type;
  //Question
  String? question;
  //Map Items
  Map<String, ChoiceItem> choiceItemMap = {};
  //Is map greater than 5,because we need to notify user
  bool isGreaterThan5 = false;
  //Choice Item Text
  String? choiceItemText;
  //Choice Item is True-Answer
  bool isTrueAnswer = false;

  //ModuleID to add into FirebaseStore
  String? moduleId;

  //Module's ID TO Add Lesson
  List<LessonImageOrDescriptionOrVideo> lessonImageOrDescriptionOrVideoList =
      [];

  //Group Value Of Radio Button
  String? groupValue;

  //Lesson Object
  Lesson? lesson;

  //Save Question Type
  void saveQuestionType(String value) {
    type = value;
    //we need to create lesson that is parent of this quiz in Firestore.
    lesson = Lesson.empty().copyWith(
      lessonTitle: "Quiz",
    );
    notifyListeners();
  }

  //Save Module's ID
  void saveModuleID(String id) {
    moduleId = id;
    notifyListeners();
  }

  //Change Question When Enter Question
  void changeQuestionText(String? value) {
    question = value;
    notifyListeners();
  }

  //Add Item Empty Object into Map When One Items is add in UI
  void addItem() {
    //Check If current Map is greater than 5 or not
    //IF less than 5,we add
    if (choiceItemMap.length < 5) {
      final item = ChoiceItem.initial();
      choiceItemMap.putIfAbsent(item.uid, () => item);
      //IF GroupValue is Null,this is the first choice object
      //So we need to add group value at the first time
      if (groupValue == null || groupValue!.isEmpty) {
        changeGroupValue(item.uid);
        print("GroupValue: $groupValue");
      }
      isGreaterThan5 = false;
    } else {
      isGreaterThan5 = true;
      //we don't add,Restrict Map Length
    }

    notifyListeners();
  }

  //Delete Item Object with uid from Map
  void deleteItem(String id) {
    choiceItemMap.remove(id);
    notifyListeners();
  }

  //Change Choice Item Text
  void changeChoiceItemText({required String? value, required String key}) {
    choiceItemMap[key] = choiceItemMap[key]!.copyWith(text: value);
    notifyListeners();
  }

  ///Change Group Value OF RADIO BUTTON
  void changeGroupValue(String value) {
    groupValue = value;
    for (var item in choiceItemMap.entries) {
      if (item.value.uid == groupValue) {
        choiceItemMap[item.value.uid] = choiceItemMap[item.value.uid]!.copyWith(
          isTrueAnswer: true,
        );
      } else {
        choiceItemMap[item.value.uid] = choiceItemMap[item.value.uid]!.copyWith(
          isTrueAnswer: false,
        );
      }
    }
    notifyListeners();
  }

  //Change Choice Item is TrueAnswer
  void changeIsTrueAnswer(bool value) {
    isTrueAnswer = value;
    notifyListeners();
  }

  //Save Question Object to upload Into Firebase
  void saveQuestion() {
    print("Press Save Question");
    if (type == QuestionType.type[0]) {
      final oneChoice = OneChoice(
        quizType: "one_choice",
        question: question ?? "",
        choiceItemMap: choiceItemMap,
      );
      lessonImageOrDescriptionOrVideoList.add(LessonImageOrDescriptionOrVideo(
        id: Uuid().v1(),
        image: null,
        imageDescription: null,
        content: null,
        videoLink: null,
        quiz: oneChoice,
      ));
    }
    if (type == QuestionType.type[1]) {
      final multipleChoice = MultipleChoice(
        quizType: "multiple_choice",
        question: question ?? "",
        choiceItemMap: choiceItemMap,
      );
      lessonImageOrDescriptionOrVideoList.add(LessonImageOrDescriptionOrVideo(
        id: Uuid().v1(),
        image: null,
        imageDescription: null,
        content: null,
        videoLink: null,
        quiz: multipleChoice,
      ));
    }
    notifyListeners();
    print(
        "ModuleId: $moduleId \n LessonImageOR: ${lessonImageOrDescriptionOrVideoList[0]}");
    print("Group Value: $groupValue");
  }
}
