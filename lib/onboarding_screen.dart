import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'onboarding_screen1.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
        Color.fromARGB(255, 255, 215, 173),
        Color.fromARGB(255, 255, 200, 142),
      ])),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 45,
          ),
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ))),
      
      
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/images/onboarding1-removebg-preview.png",
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(
            height: 45,
          ),
          const Text(
            "Find a Resturant",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(
            height: 18,
          ),
          const SizedBox(
              width: 280,
              child: Text(
                "Fastest operation to provide food by the fence",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 139, 77, 30)),
                textAlign: TextAlign.center,
              )),
          const SizedBox(
            height: 10,
          ),
          DotCard(),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 70,
            width: 70,
            child: IconButton(
                style: IconButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 92, 47)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OnboardingScreenPage1()),
                  );
                },
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                )),
          )
        ],
      ),
    ));
  }
}

class DotCard extends StatelessWidget {
  const DotCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.fiber_manual_record,
          color: Colors.white,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.white,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.white,
        ),
      ],
    );
  }
}
