import 'package:flutter/material.dart';

class CustomPaintCourseDetail extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    var start = Offset(0.0, size.height * 0.95);
    var firstPoint = Offset(size.width * 0.1, size.height * 0.85);
    var secondPoint = Offset(size.width * 0.15, size.height * 0.85);
    var thirdPoint = Offset(size.width * 0.95, size.height * 0.85);
    var linePoint = Offset(size.width * 0.9, size.height * 0.85);
    var endPoint = Offset(size.width, size.height * 0.75);

    Path path = Path();
    path.moveTo(start.dx, start.dy);
    path.quadraticBezierTo(
        firstPoint.dx, firstPoint.dy, secondPoint.dx, secondPoint.dy);
    path.lineTo(linePoint.dx, linePoint.dy);
    path.quadraticBezierTo(
        thirdPoint.dx, thirdPoint.dy, endPoint.dx, endPoint.dy);
    // path.quadraticBezierTo(thirdPoint.dx, thirdPoint.dy, end.dx, end.dy);
    path.lineTo(size.width, 0.0);
    path.lineTo(0.0, 0.0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPaintCourseDetail oldDelegate) => false;
}
