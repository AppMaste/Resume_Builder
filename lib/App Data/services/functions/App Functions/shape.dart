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

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width, size.height - 90, size.width, size.height - 90);
    path.quadraticBezierTo(
        size.width, size.height - 20, size.width, size.height - 20);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // Return true if the clipper should be recreated (e.g., on animation changes)
  }
}

class MyClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0,45.1782);
    path_0.lineTo(0,100);
    path_0.lineTo(54.5028,100);
    path_0.lineTo(63.4893,98.3636);
    path_0.cubicTo(76.405,94.6231,101.77,79.1701,99.9023,47.2823);
    path_0.cubicTo(98.035,15.3944,71.8145,2.90264,58.9377,0.642738);
    path_0.cubicTo(51.7407,-0.759953,33.7754,-0.783331,19.4903,10.3447);
    path_0.cubicTo(5.20519,21.4727,0.544639,38.2037,0,45.1782);
    path_0.close();


    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xffF2AB01).withOpacity(1.0);
    // canvas.drawPath(path_0,paint_0_fill);
    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // Return true if the clipper should be recreated (e.g., on animation changes)
  }
}

class MyClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(69.0188,4.54856);
    path_0.cubicTo(75.0836,-1.51619,84.9164,-1.51619,90.9812,4.54856);
    path_0.lineTo(155.451,69.0188);
    path_0.cubicTo(161.516,75.0835,161.516,84.9164,155.451,90.9812);
    path_0.lineTo(90.9812,155.451);
    path_0.cubicTo(84.9165,161.516,75.0836,161.516,69.0188,155.451);
    path_0.lineTo(4.54856,90.9812);
    path_0.cubicTo(-1.51618,84.9164,-1.51619,75.0836,4.54856,69.0188);
    path_0.lineTo(69.0188,4.54856);
    path_0.close();



    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xffF2AB01).withOpacity(1.0);
    // canvas.drawPath(path_0,paint_0_fill);
    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // Return true if the clipper should be recreated (e.g., on animation changes)
  }
}


