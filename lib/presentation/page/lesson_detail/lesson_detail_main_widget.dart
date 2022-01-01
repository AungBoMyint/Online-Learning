import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/domain/json/course/lesson_image_or_description_or_video.dart';
import 'package:online_learning/domain/json/question/fill_blank/fill_blank.dart';
import 'package:online_learning/domain/json/question/multiple_choice/multiple_choice.dart';
import 'package:online_learning/domain/json/question/one_choice/one_choice.dart';
import 'package:online_learning/presentation/page/lesson_detail/lesson_detail_page.dart';
import 'package:online_learning/presentation/page/lesson_detail/quiz_widget/checkbox_widget.dart';
import 'package:online_learning/presentation/page/lesson_detail/quiz_widget/fill_blank_widget.dart';
import 'package:online_learning/presentation/page/lesson_detail/quiz_widget/one_choice_widget.dart';

class LessonDetailMainWidget extends ConsumerWidget {
  final List<LessonImageOrDescriptionOrVideo> lessonContent;
  const LessonDetailMainWidget({Key? key, required this.lessonContent})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(functionProvider);
    for (var item in lessonContent) {
      if (item.quiz != null) {
        if (item.quiz is OneChoice) {
          return OneChoiceWidget(
            oneChoice: item.quiz,
          );
        }
        if (item.quiz is MultipleChoice) {
          final ob = item.quiz as MultipleChoice;
          //We First Insert this map
          provider.addChoiceItemMap(ob.choiceItemMap);
          return CheckBoxWidget(multipleChoice: item.quiz);
        }
        if (item.quiz is FillBlank) {
          return FillBlankWidget(fillBlank: item.quiz);
        }
      } else {
        return LessonDetailPage(
          lessonContent: lessonContent,
        );
      }
    }
    return const SizedBox(
      height: 0,
    );
  }
}
