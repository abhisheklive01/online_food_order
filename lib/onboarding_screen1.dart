import 'package:flutter/material.dart';

class OnboardingScreenPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://docs.flutter.dev/assets/images/dash/Dashatars.png',
                    width: 250,
                    height: 300,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Email",
                      hintText: 'e.g., John Doe',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  Text(
                    'Welcome to the App',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  TextArea(
                    praText: 'Lorem ipsum dolor sit amet',
                    textColor: Colors.pink,
                    textSize: 16,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  BtnOnboard(
                    btnText: "Skip",
                  ),
                  BtnOnboard(
                    btnText: "Next",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// optional
// required
// default value

class BtnOnboard extends StatelessWidget {
  const BtnOnboard({
    super.key,
    this.btnText = "Hello",
  });
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Action to perform when "Skip" button is pressed
      },
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          BorderSide(color: Colors.white, width: 2.0),
        ),
        foregroundColor: MaterialStateProperty.all(Colors.white),
      ),
      child: Text(
        btnText,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class TextArea extends StatelessWidget {
  const TextArea({
    super.key,
    required this.praText,
    required this.textColor,
    required this.textSize,
  });

  final String praText;
  final Color textColor;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          Text(
            praText,
            style: TextStyle(fontSize: textSize, color: textColor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
