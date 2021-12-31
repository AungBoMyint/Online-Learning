import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/domain/json/course/lesson_image_or_description_or_video.dart';
import 'package:online_learning/presentation/page/lesson_detail/function.dart';
import 'quiz_widget/one_choice_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LessonDetailPage extends ConsumerWidget {
  final List<LessonImageOrDescriptionOrVideo> lessonContent;
  const LessonDetailPage({Key? key, required this.lessonContent})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final provider = ref.watch(functionProvider);
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
        //Show Button as soon as widget is build.
        showBottomSheetToCheckAnswer(
          context: context,
          callBack: () {
            final trueAnswer = quiz.choiceItemMap.values
                .where((element) => element.isTrueAnswer == true);
            if (provider.groupValue == trueAnswer.first.uid) {
              //TODO: show true button sheet
              showTrueBottomSheet(
                context: context,
                callBack: () {
                  provider.pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                  //We need to pop
                  Navigator.of(context).pop();
                },
                size: size,
              );
            } else {
              //TODO: show false button sheet
              showWrongBottomSheet(
                context: context,
                callBack: () => Navigator.of(context).pop(),
                size: size,
              );
            }
          },
          size: size,
        );
        print("Quiz: $quiz");

        final oneChoice = quiz;
        //We need to pre add groupValue at the first time
        //provider.changeGroupValue(quiz.choiceItemMap.entries.first.key);
        //TODO: One Choice Widget
        return OneChoiceWidget(oneChoice: oneChoice);
      }
      return Container();
    }).toList());
  }
}
