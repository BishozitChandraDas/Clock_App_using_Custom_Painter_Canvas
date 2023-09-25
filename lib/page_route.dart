import 'package:custom_painter/clock_page.dart';
import 'package:custom_painter/house_page.dart';
import 'package:flutter/material.dart';

class pageRoute extends StatelessWidget {
  const pageRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Painter Route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Clock'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClockPage()),
                );
              },
            ),
            SizedBox(height: 20), // Add some spacing between the buttons
            ElevatedButton(
              child: const Text('House'), // Change the button text
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HousePage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
