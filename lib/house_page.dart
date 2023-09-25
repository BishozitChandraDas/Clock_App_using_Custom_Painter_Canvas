import 'package:custom_painter/clock_view.dart';
import 'package:custom_painter/house_view.dart';
import 'package:custom_painter/page_route.dart';
import 'package:flutter/material.dart';

 
class HousePage extends StatefulWidget {
  @override
  _HousePageState createState() => _HousePageState();
}

class _HousePageState extends State<HousePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        //color: const Color.fromARGB(255, 6, 31, 8),
        child: HouseView(),
      ),
    );
  }
}

