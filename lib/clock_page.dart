import 'package:custom_painter/clock_view.dart';
import 'package:flutter/material.dart';

 
class ClockPage extends StatefulWidget {
  @override
  _ClockPageState createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color.fromARGB(255, 6, 31, 8),
        child: ClockView(),
      ),
    );
  }
}

