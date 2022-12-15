import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;

  const ProfileAvatar({
    Key? key,
    required this.backgroundColor,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: backgroundColor,
      child: CircleAvatar(
        radius: 18,
        child: child,
      ),
    );
  }
}
