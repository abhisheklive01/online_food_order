import 'package:flutter/material.dart';
import 'package:flutter_application_7/pageview_demo.dart';
import 'package:flutter_application_7/signup_screen.dart';

import 'contact_form.dart';
import 'custom_scroll.dart';
import 'expanded_section.dart';
import 'onboarding_screen.dart';
import 'onboarding_screen1.dart';

void main() {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: OnboardingScreenView(),
    );
  }
}
