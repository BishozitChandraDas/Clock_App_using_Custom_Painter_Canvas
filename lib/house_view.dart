import 'package:flutter/material.dart';
import 'dart:math';

class HouseView extends StatefulWidget {
  @override
  _HouseViewState createState() => _HouseViewState();
}

class _HouseViewState extends State<HouseView> {
  @override
  // void initState() {
  //   Timer.periodic(const Duration(seconds: 1), (timer) {
  //     setState(() {});
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 100,
      child: Transform.rotate(
        angle: -pi / 2,
        child: CustomPaint(
          painter: MyFancyPainter(),
        ),
      ),
    );
  }
}

class MyFancyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 5
      ..color = Colors.indigoAccent
      ..style = PaintingStyle.stroke;

    // final triangle = Path();
    // triangle.moveTo(150, 100);
    // triangle.relativeLineTo(-150, 0);
    // triangle.relativeLineTo(100, 100);
    // triangle.close();

    // canvas.drawPath(triangle, paint);

    final square1 = Path();
    square1.moveTo(200, 0);
    square1.relativeLineTo(100, 0);
    square1.relativeLineTo(0, 150);
    square1.relativeLineTo(-100, 0);
    square1.close();

    canvas.drawPath(square1, paint);

    final square2 = Path();
    square2.moveTo(200, 0);
    square2.relativeLineTo(100, 0);
    square2.relativeLineTo(30, -30);
    square2.relativeLineTo(0, 160);
    square2.relativeLineTo(-30, 20);

    canvas.drawPath(square2, paint);

    final square3 = Path();
    square3.moveTo(200, 0);
    square3.relativeLineTo(0, -60);
    square3.relativeLineTo(100, 0);
    square3.relativeLineTo(30, 30);
    square3.relativeLineTo(-30, -30);
    square3.relativeLineTo(0, 60);

    canvas.drawPath(square3, paint);

    final paint2 = Paint()
      ..strokeWidth = 5
      ..color = Colors.orange
      ..style = PaintingStyle.stroke;

    final door = Path();
    door.moveTo(200, 60);
    door.relativeLineTo(60, 0);
    door.relativeLineTo(0, 30);
    door.relativeLineTo(-60, 0);

    canvas.drawPath(door, paint2);

    final paint3 = Paint()
      ..strokeWidth = 3
      ..color = Colors.purple
      ..style = PaintingStyle.stroke;

    final window = Path();
    window.moveTo(235, 110);
    window.relativeLineTo(25, 0);
    window.relativeLineTo(00, 25);
    window.relativeLineTo(-25, 00);
    window.close();

    canvas.drawPath(window, paint3);

    final window1 = Path();
    window1.moveTo(235, 20);
    window1.relativeLineTo(25, 0);
    window1.relativeLineTo(00, 25);
    window1.relativeLineTo(-25, 00);
    window1.close();

    canvas.drawPath(window1, paint3);

    final window2 = Path();
    window2.moveTo(235, -40);
    window2.relativeLineTo(25, 0);
    window2.relativeLineTo(00, 25);
    window2.relativeLineTo(-25, 00);
    window2.close();

    canvas.drawPath(window2, paint3);

    final paint4 = Paint()
      ..strokeWidth = 3
      ..color = Colors.red
      ..style = PaintingStyle.stroke;
    final stairs = Path();
    stairs.moveTo(200, 30);
    stairs.relativeLineTo(-15, 0);
    stairs.relativeLineTo(0, 90);
    stairs.relativeLineTo(15, 0);

    canvas.drawPath(stairs, paint4);

    final stairs2 = Path();
    stairs2.moveTo(185, 45);
    stairs2.relativeLineTo(-15, 0);
    stairs2.relativeLineTo(0, 60);
    stairs2.relativeLineTo(15, 0);

    canvas.drawPath(stairs2, paint4);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}































