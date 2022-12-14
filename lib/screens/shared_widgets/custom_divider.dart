import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              color: kDividerColor1,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: kDividerColor2,
            ),
          ),
        ],
      ),
    );
  }
}
