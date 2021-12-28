import 'package:online_learning/domain/json/course/content.dart';
import 'package:online_learning/domain/json/course/lesson_image_or_description_or_video.dart';
import 'package:online_learning/domain/mock/app/string_mock.dart';

class LessonContentMock {
  static final lessonContents = [
    LessonImageOrDescriptionOrVideo(
      id: "00",
      image: null,
      imageDescription: null,
      content: null,
      videoLink: "8caOiNbUrfo",
      quiz: null,
    ),
    LessonImageOrDescriptionOrVideo(
      id: "00",
      image: null,
      imageDescription: null,
      content: Content(content: content, color: "#ec407a"),
      videoLink: null,
      quiz: null,
    ),
    LessonImageOrDescriptionOrVideo(
      id: "00",
      image: "images/japan_girl_user.png",
      imageDescription: null,
      content: null,
      videoLink: null,
      quiz: null,
    ),
  ];
}
