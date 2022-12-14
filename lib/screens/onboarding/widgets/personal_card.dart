import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../shared_widgets/custom_divider.dart';
import 'custom_headline_widget.dart';

class PersonalCard extends StatelessWidget {
  const PersonalCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.25,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
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
                    const CustomHeadlineWidget(
                      headline: 'Policy No.',
                      text: '1222134214124',
                    ),
                    SizedBox(
                      width: size.width * 0.7,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
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
    );
  }
}
