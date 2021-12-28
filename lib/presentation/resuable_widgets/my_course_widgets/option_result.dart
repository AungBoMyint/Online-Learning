import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyCourseOptionResultWidget extends StatelessWidget {
  const MyCourseOptionResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.separated(
      primary: false,
      shrinkWrap: true,
      separatorBuilder: (context, index) {
        return const SizedBox(height: 10);
      },
      itemBuilder: (context, index) {
        return Card(
            elevation: 10,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            color: Colors.white,
            child: SizedBox(
                height: size.height * 0.25,
                width: size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: size.width * 0.4,
                        height: size.height * 0.25,
                        child: SvgPicture.asset(
                          "images/online_learning.svg",
                          fit: BoxFit.cover,
                        )),

                    ///
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: SizedBox(
                        width: size.width * 0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ///Title
                            const Text("Digital Design Thinking",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                )),

                            ///Space
                            const SizedBox(
                              height: 10,
                            ),

                            ////Course Description
                            const Text(
                                "This Design course is the best if you"
                                "do every time in your home or somewhere that is peaceful."
                                "Keep in mind that everything can get only if we try ourself.",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                )),

                            ///Space
                            const SizedBox(
                              height: 15,
                            ),

                            ///ToDo Linear Progress Indicator
                            LinearPercentIndicator(
                              width: size.width * 0.5,
                              animation: true,
                              lineHeight: 15.0,
                              animationDuration: 2500,
                              percent: 0.8,
                              center: const Text("80.0%",
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )));
      },
      itemCount: 20,
    );
  }
}
