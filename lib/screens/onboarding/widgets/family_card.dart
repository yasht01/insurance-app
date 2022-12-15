import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../shared_widgets/custom_divider.dart';
import 'custom_headline_widget.dart';
import '../../shared_widgets/profile_avatar.dart';

class FamilyCard extends StatelessWidget {
  const FamilyCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.31,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "family's health policy",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    Text(
                      'SBI General',
                      style: TextStyle(color: Colors.white60, fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  width: size.width * 0.2,
                  child: Stack(children: const [
                    Positioned(
                      left: 20.0,
                      child: ProfileAvatar(
                        backgroundColor: Colors.white,
                        child: FlutterLogo(),
                      ),
                    ),
                    Positioned(
                      left: 10.0,
                      child: ProfileAvatar(
                        backgroundColor: Colors.white,
                        child: FlutterLogo(),
                      ),
                    ),
                    Positioned(
                      child: ProfileAvatar(
                        backgroundColor: Colors.white,
                        child: FlutterLogo(),
                      ),
                    ),
                  ]),
                ),
              ],
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
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: size.width * 0.35,
                          child: const CustomHeadlineWidget(
                            headline: 'Insurer',
                            text: 'SBI General',
                          ),
                        ),
                        Container(
                          width: size.width * 0.35,
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 50.0),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.trip_origin,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: size.width * 0.35,
                          child: const CustomHeadlineWidget(
                            headline: 'Policy No',
                            text: 'SBI/1234/56789',
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.35,
                          child: const CustomHeadlineWidget(
                            headline: 'Expires on',
                            text: '1st March, 2024',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: size.width * 0.35,
                          child: const CustomHeadlineWidget(
                            headline: 'Premium',
                            text: '\$ 30,000',
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.35,
                          child: const CustomHeadlineWidget(
                            headline: 'Sum insured',
                            text: '\$ 30,000.00',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
