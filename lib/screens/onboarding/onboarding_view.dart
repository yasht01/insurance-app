import 'package:flutter/material.dart';

import 'widgets/background_view.dart';
import 'widgets/foreground_view.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          BackgroundView(),
          ForegroundView(),
        ],
      ),
    );
  }
}
