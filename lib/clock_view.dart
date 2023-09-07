import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

class ClockView extends StatefulWidget {
  @override
  _ClockViewState createState() => _ClockViewState();
}

class _ClockViewState extends State<ClockView> {
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 300,
      child: Transform.rotate(
        angle: -pi / 2,
        child: CustomPaint(
          painter: ClockPainter(),
        ),
      ),
    );
  }
}

class ClockPainter extends CustomPainter {
  var dateTime = DateTime.now();

  //60 sec - 360 degree, 1 sec - 6 degree
  //12 hours  - 360 degree, 1 hour - 30 degree,
  //1 hour - 30 degree, 1 min - 0.5 degree

  @override
  void paint(Canvas canvas, Size size) {
    var centerX = size.width / 2;
    var centerY = size.height / 2;
    var center = Offset(centerX, centerY);
    var radius = min(centerX, centerY);

    var fillBrush = Paint()..color = const Color.fromARGB(255, 22, 24, 39);

    var outlineBrush = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    var centerFillBrush = Paint()..color = Colors.white;

    var secHandBrush = Paint()
      ..color = Colors.orange[300]!
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5;

    var minHandBrush = Paint()
      ..shader = const RadialGradient(colors: [Colors.blue, Colors.teal])
          .createShader(Rect.fromCircle(center: center, radius: radius))
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8;

    var hourHandBrush = Paint()
      ..shader =
          const RadialGradient(colors: [Color(0xffEA74AB), Color(0xffC279FB)])
              .createShader(Rect.fromCircle(center: center, radius: radius))
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 12;

    var dashBrush = Paint()
      ..color = const Color(0xffEAECFF)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2;
    var dashBrush2 = Paint()
      ..color = const Color(0xffFEE415)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 3;
    canvas.drawCircle(center, radius - 40, fillBrush);
    canvas.drawCircle(center, radius - 40, outlineBrush);

    var hourHandX = centerX +
        60 * cos((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    var hourHandY = centerX +
        60 * sin((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    canvas.drawLine(center, Offset(hourHandX, hourHandY), hourHandBrush);

    var minHandX = centerX + 80 * cos(dateTime.minute * 6 * pi / 180);
    var minHandY = centerX + 80 * sin(dateTime.minute * 6 * pi / 180);
    canvas.drawLine(center, Offset(minHandX, minHandY), minHandBrush);

    var secHandX = centerX + 80 * cos(dateTime.second * 6 * pi / 180);
    var secHandY = centerX + 80 * sin(dateTime.second * 6 * pi / 180);
    canvas.drawLine(center, Offset(secHandX, secHandY), secHandBrush);

    canvas.drawCircle(center, 16, centerFillBrush);

    var outerCircleRadius = radius;
    var innerCircleRadius = radius - 25;

    for (double i = 0; i < 360; i += 30) {
      var x1 = centerX + outerCircleRadius * cos(i * pi / 180);
      var y1 = centerY + outerCircleRadius * sin(i * pi / 180);

      var x2 = centerX + innerCircleRadius * cos(i * pi / 180);
      var y2 = centerY + innerCircleRadius * sin(i * pi / 180);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), dashBrush);
    }

    var outerCircleRadius2 = radius - 13;
    var innerCircleRadius2 = radius - 20;

    for (double i = 6; i < 360; i += 30) {
      var x1 = centerX + outerCircleRadius2 * cos(i * pi / 180);
      var y1 = centerY + outerCircleRadius2 * sin(i * pi / 180);

      var x2 = centerX + innerCircleRadius2 * cos(i * pi / 180);
      var y2 = centerY + innerCircleRadius2 * sin(i * pi / 180);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), dashBrush2);
    }

    var outerCircleRadius3 = radius - 13;
    var innerCircleRadius3 = radius - 20;

    for (double i = 12; i < 360; i += 30) {
      var x1 = centerX + outerCircleRadius3 * cos(i * pi / 180);
      var y1 = centerY + outerCircleRadius3 * sin(i * pi / 180);

      var x2 = centerX + innerCircleRadius3 * cos(i * pi / 180);
      var y2 = centerY + innerCircleRadius3 * sin(i * pi / 180);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), dashBrush2);
    }

    var outerCircleRadius4 = radius - 13;
    var innerCircleRadius4 = radius - 20;

    for (double i = 18; i < 360; i += 30) {
      var x1 = centerX + outerCircleRadius4 * cos(i * pi / 180);
      var y1 = centerY + outerCircleRadius4 * sin(i * pi / 180);

      var x2 = centerX + innerCircleRadius4 * cos(i * pi / 180);
      var y2 = centerY + innerCircleRadius4 * sin(i * pi / 180);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), dashBrush2);
    }

    var outerCircleRadius5 = radius - 13;
    var innerCircleRadius5 = radius - 20;

    for (double i = 24; i < 360; i += 30) {
      var x1 = centerX + outerCircleRadius5 * cos(i * pi / 180);
      var y1 = centerY + outerCircleRadius5 * sin(i * pi / 180);

      var x2 = centerX + innerCircleRadius5 * cos(i * pi / 180);
      var y2 = centerY + innerCircleRadius5 * sin(i * pi / 180);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), dashBrush2);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
