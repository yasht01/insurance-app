import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:insurance_app/utils/constants.dart';

import '../../shared_widgets/custom_divider.dart';

class ForegroundView extends StatelessWidget {
  const ForegroundView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        CardsView(size: size),
        BottomForegroundView(size: size),
      ],
    );
  }
}

class CardsView extends StatelessWidget {
  const CardsView({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.45,
      child: Stack(
        children: [
          Positioned(
            left: 30.0,
            top: 80.0,
            child: Container(
              width: size.width * 0.8,
              height: size.height * 0.25,
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(10.0),
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
                    child: Text(
                      "mayan's health",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  const CustomDivider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 16.0,
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomHeadlineWidget(
                              headline: 'Policy No.',
                              text: '1222134214124',
                            ),
                            SizedBox(
                              width: size.width * 0.7,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomHeadlineWidget(
                                    headline: 'Insurer',
                                    text: 'SBI',
                                  ),
                                  Spacer(),
                                  CustomHeadlineWidget(
                                    headline: 'Expires on',
                                    text: '23/11/2033',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 90.0,
            top: 110.0,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Material(
                  //TODO: elevation not working
                  elevation: 15.0,
                  color: Colors.transparent,
                  child: Container(
                    width: size.width * 0.8,
                    height: size.height * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10.0),
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
            ),
          ),
        ],
      ),
    );
  }
}

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

class BottomForegroundView extends StatelessWidget {
  const BottomForegroundView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height * 0.15),
            child: RichText(
              text: const TextSpan(
                text: 'Best Insurance\nPolicy Management\nApp',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 42,
                  color: Colors.black,
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
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              "set renewal reminders, manage and know all your family's insurance policies",
              style: TextStyle(
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OutlinedButton(
                //TODO:
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.all(8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Row(
                  children: const [
                    Text(
                      "Let's go",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: kPrimaryColor,
                      size: 36,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
