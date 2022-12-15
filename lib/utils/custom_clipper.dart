import 'package:flutter/material.dart';

//* Custom path clipper for background view of [OnboardingView] widget

class CustomContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var customPath = Path();

    customPath.lineTo(0, size.height / 2);
    final startPoint = Offset(size.width / 5, size.height);
    final endPoint = Offset(size.width, size.height - 50.0);

    customPath.quadraticBezierTo(
        startPoint.dx, startPoint.dy, endPoint.dx, endPoint.dy);
    customPath.lineTo(size.width, 0);
    customPath.close();
    return customPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
