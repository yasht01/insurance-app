import 'package:flutter/material.dart';

class CustomHeadlineWidget extends StatelessWidget {
  const CustomHeadlineWidget({
    Key? key,
    required this.headline,
    required this.text,
  }) : super(key: key);

  final String headline;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headline,
            style: const TextStyle(color: Colors.white60, fontSize: 12),
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
