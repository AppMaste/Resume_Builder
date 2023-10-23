import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.32, size.height * 0.1442857);
    path_0.lineTo(size.width * 1.1, size.height * 0.1442857);
    path_0.lineTo(size.width * 1.1, size.height * 1.46);
    path_0.lineTo(size.width * 0.0433333, size.height * 2.0);
    path_0.lineTo(size.width * 0.0416667, size.height * 0.1442857);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter2 extends CustomPainter {
  @override
  paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color(0xFF202C3A)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.32, size.height * -0.01);
    path_0.lineTo(size.width * 0.0433333, size.height * 0.12);
    path_0.lineTo(size.width * 0.0416667, size.height * 3.45);
    path_0.lineTo(size.width * 1.24, size.height * 3.45);
    path_0.lineTo(size.width * 1.24, size.height * -0.5);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter3 extends CustomPainter {
  @override
  paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color(0xFF38B86B)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.75, size.height * -0.24);
    path_0.lineTo(size.width * 1.24, size.height * 0);
    path_0.lineTo(size.width * 1.24, size.height * -0.5);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.32, size.height * 0.1442857);
    path.lineTo(size.width * 1.1, size.height * 0.1442857);
    path.lineTo(size.width * 1.1, size.height * 1.5);
    path.lineTo(size.width * 0.0433333, size.height * 2.0);
    path.lineTo(size.width * 0.0416667, size.height * 0.1442857);
    path.close();

    // Define the custom shape (circle in this case)
    // double radius = size.width / 2;
    // path.addOval(
    //   Rect.fromCircle(
    //       center: Offset(size.width / 2, size.height / 2), radius: radius),
    // );

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
