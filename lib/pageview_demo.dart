import 'package:flutter/material.dart';

import 'home_screen.dart';

class OnboardingScreenView extends StatefulWidget {
  const OnboardingScreenView({super.key});

  @override
  State<OnboardingScreenView> createState() => _OnboardingScreenViewState();
}

class _OnboardingScreenViewState extends State<OnboardingScreenView> {
  var pageName = "Page 1";
  var currentValue = 0;

  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: currentValue == 0
                    ? [Colors.pink, Colors.yellow]
                    : currentValue == 1
                        ? [Colors.orange, Colors.yellow]
                        : [Colors.blue, Colors.yellow])),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentValue = value;
                  });
                },
                children: [
                  Container(
                      child: Column(
                    children: [
                      Text("Pgae 1 , $currentValue"),
                      Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomeScreen()),
                                );
                              },
                              child: Text(
                                "Skip",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ))),
                    ],
                  )),
                  Container(
                      child: Text("Page 2,  current value $currentValue")),
                  Container(child: Text("Page 3, current value $currentValue")),
                ],
              ),
            ),
            Container(
              height: 40,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return currentValue == index ? ActiveDot() : InActiveDot();
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            IconButton(
                color: Colors.white,
                style: IconButton.styleFrom(
                    backgroundColor: currentValue == 0
                        ? Colors.orange
                        : currentValue == 1
                            ? Colors.yellow
                            : Colors.blue),
                onPressed: () {
                  if (currentValue == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  } else {
                    pageController.animateToPage(currentValue + 1,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeInOut);
                  }
                },
                icon: Icon(Icons.forward_outlined)),
            SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}

class InActiveDot extends StatelessWidget {
  const InActiveDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 10,
        height: 10,
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      ),
    );
  }
}

class ActiveDot extends StatelessWidget {
  const ActiveDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 15,
        height: 15,
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            color: Colors.transparent,
            shape: BoxShape.circle),
        child: Container(
          width: 10,
          height: 10,
          decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        ),
      ),
    );
  }
}
