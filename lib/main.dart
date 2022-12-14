import 'package:flutter/material.dart';
import 'package:insurance_app/screens/onboarding/onboarding_view.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Insurance App',
      home: OnboardingView(),
    );
  }
}
