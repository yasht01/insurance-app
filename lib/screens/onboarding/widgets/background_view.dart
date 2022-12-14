import 'package:flutter/material.dart';
import 'package:insurance_app/utils/custom_clipper.dart';

class BackgroundView extends StatelessWidget {
  const BackgroundView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipPath(
      clipper: CustomContainerClipper(),
      child: Container(
        height: size.height * 0.6,
        color: const Color(0xFF00E0C8),
      ),
    );
  }
}
