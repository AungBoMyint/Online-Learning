import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:online_learning/domain/json/course/lesson_image_or_description_or_video.dart';
import 'package:online_learning/domain/json/question/multiple_choice/multiple_choice.dart';
import 'package:online_learning/domain/json/question/one_choice/one_choice.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LessonDetailPage extends StatelessWidget {
  final List<LessonImageOrDescriptionOrVideo> lessonContent;
  const LessonDetailPage({Key? key, required this.lessonContent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView(
        children: lessonContent.map<Widget>((item) {
      final image = item.image;
      final content = item.content;
      final videoLink = item.videoLink;
      final quiz = item.quiz;

      ///Image
      if (image != null) {
        return Center(
          child: SizedBox(
            height: size.height * 0.5,
            width: size.width * 0.5,
            child: CachedNetworkImage(
              imageUrl: image,
              fit: BoxFit.fill,
              progressIndicatorBuilder: (context, url, status) {
                return Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      value: status.progress,
                    ),
                  ),
                );
              },
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        );
      }

      ///Content
      if (content != null) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 5,
          ),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            color: HexColor(content.color),
            child: Text(content.content),
          ),
        );
      }

      ///Video
      if (videoLink != null) {
        YoutubePlayerController _controller = YoutubePlayerController(
          initialVideoId: videoLink,
          flags: const YoutubePlayerFlags(
            autoPlay: false,
            mute: true,
          ),
        );

        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
            height: size.height * 0.25,
            width: size.width * 0.5,
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
            ),
          ),
        );
      }
      ////Quiz Widget
      if (quiz != null) {
        if (quiz is OneChoice) {
          //TODO: One Choice Widget
        } else if (quiz is MultipleChoice) {
          //TODO: Multiple Choice Widget
        } else {
          //TODO: FillBlank Widget
        }
      }
      return Container();
    }).toList());
  }
}
