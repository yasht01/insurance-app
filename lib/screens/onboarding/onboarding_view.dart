import 'package:flutter/material.dart';

import '../../providers/onboarding/onboarding_data_provider.dart';
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
      body: OnboardingDataProvider(
        child: Stack(
          children: const [
            BackgroundView(),
            ForegroundView(),
          ],
        ),
      ),
    );
  }
}
