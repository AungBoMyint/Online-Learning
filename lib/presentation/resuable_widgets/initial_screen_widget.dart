import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InitialResuableWidget extends StatelessWidget {
  final String title;
  final String content;
  final String image;
  const InitialResuableWidget({
    Key? key,
    required this.title,
    required this.content,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView(children: [
      //Svg Photo
      Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 10,
          right: 10,
        ),
        child: SvgPicture.asset(
          image,
          width: (size.width * 0.8).toDouble(),
          height: (size.height * 0.6).toDouble(),
        ),
      ),
      //Space
      const SizedBox(
        height: 10,
      ),
      //Title
      Center(
        child: Text(title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
      ),
      //Space
      const SizedBox(
        height: 5,
      ),
      //Linear Dot
      Center(
        child: SizedBox(
          height: 5,
          width: 50,
          child: Container(
            color: Colors.blue[600],
          ),
        ),
      ),
      //Space
      const SizedBox(
        height: 10,
      ),
      //Content
      Center(
        child: SizedBox(
          width: size.width * 0.8,
          child: Text(content,
              style: TextStyle(
                color: Colors.grey[400],
                fontWeight: FontWeight.bold,
                fontSize: 15,
              )),
        ),
      )
    ]);
  }
}
