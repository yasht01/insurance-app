import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class BasicCard extends StatelessWidget {
  const BasicCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      color: Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            width: size.width * 0.8,
            height: size.height * 0.25,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    top: 16.0,
                    bottom: 8.0,
                  ),
                  child: RichText(
                    text: const TextSpan(
                      text: 'name',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                      children: [
                        TextSpan(
                          text: '.',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 42,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
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
                ),
                SizedBox(height: size.height * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'Insurer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Expires',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
