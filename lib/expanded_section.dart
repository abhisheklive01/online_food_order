import 'package:flutter/material.dart';

class ExpandedClass extends StatelessWidget {
  const ExpandedClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              width: 150,
              height: 150,
            ),
            Container(
              color: Colors.yellow,
              width: 150,
              height: 150,
            ),
            Container(
              color: Colors.blue,
              width: 150,
              height: 150,
            ),
            Container(
              color: Colors.blue,
              width: 150,
              height: 150,
            ),
            Container(
              color: Colors.blue,
              width: 150,
              height: 150,
            ),
            Container(
              color: Colors.blue,
              width: 150,
              height: 150,
            ),
            Container(
              color: Colors.blue,
              width: 150,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
