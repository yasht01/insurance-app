import 'package:flutter/material.dart';

import '../screens/onboarding/onboarding_view.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Insurance App',
      home: OnboardingView(),
    );
  }
}
