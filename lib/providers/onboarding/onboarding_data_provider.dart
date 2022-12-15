import 'package:flutter/material.dart';

import '../../utils/enums.dart';

class OnboardingDataProvider extends StatefulWidget {
  final Widget child;
  const OnboardingDataProvider({Key? key, required this.child})
      : super(key: key);

  static OnboardingDataProviderState of(BuildContext context) {
    return (context
            .dependOnInheritedWidgetOfExactType<InheritedOnboardingData>())!
        .data;
  }

  @override
  OnboardingDataProviderState createState() => OnboardingDataProviderState();
}

class OnboardingDataProviderState extends State<OnboardingDataProvider> {
  TranslucentCardLocation location = TranslucentCardLocation.front;

  void toggleLocation() {
    setState(() {
      location = location == TranslucentCardLocation.front
          ? TranslucentCardLocation.back
          : TranslucentCardLocation.front;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InheritedOnboardingData(
      data: this,
      location: location,
      child: widget.child,
    );
  }
}

class InheritedOnboardingData extends InheritedWidget {
  const InheritedOnboardingData(
      {Key? key,
      required Widget child,
      required this.data,
      required this.location})
      : super(key: key, child: child);

  final TranslucentCardLocation location;
  final OnboardingDataProviderState data;

  @override
  bool updateShouldNotify(InheritedOnboardingData oldWidget) {
    return location != oldWidget.location;
  }
}
