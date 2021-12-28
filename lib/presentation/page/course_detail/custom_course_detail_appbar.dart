import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:online_learning/presentation/page/course_detail/custom_painter.dart';

class CustomCourseDetailAppBar extends StatelessWidget
    with PreferredSizeWidget {
  final Size screenSize;
  final String courseName;
  final String imageUrl;
  const CustomCourseDetailAppBar(
      {Key? key,
      required this.screenSize,
      required this.imageUrl,
      required this.courseName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CustomPaint(
      painter: CustomPaintCourseDetail(),
      child: Stack(
        children: [
          ///Course Image
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                height: size.height * 0.35,
                width: size.width * 0.8,
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.contain,
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
            ),
          ),

          ///Course Title
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Container(
                color: Colors.black.withOpacity(0.5),
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    courseName,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 8,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),

          ///Tab Bar
          const Align(
            alignment: Alignment.bottomCenter,
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3,
              indicatorColor: Colors.blue,
              labelColor: Colors.black,
              labelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              unselectedLabelColor: Colors.grey,
              tabs: [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Tab(
                    text: "Lecture",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Tab(
                    text: "Review",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => screenSize;
}
