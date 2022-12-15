import 'package:flutter/material.dart';

import '../../../providers/onboarding/onboarding_data_provider.dart';
import '../../../screens/onboarding/widgets/basic_card.dart';
import '../../../utils/enums.dart';

import '../../../utils/constants.dart';
import 'family_card.dart';
import 'personal_card.dart';

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
    final onboardingData = OnboardingDataProvider.of(context).location;
    final stackChildren = [
      Positioned(
        left: onboardingData == TranslucentCardLocation.front
            ? kPositionMap[TranslucentCardLocation.back]![0]
            : kPositionMap[TranslucentCardLocation.front]![0],
        top: onboardingData == TranslucentCardLocation.front
            ? kPositionMap[TranslucentCardLocation.back]![1]
            : kPositionMap[TranslucentCardLocation.front]![1],
        child: PersonalCard(size: size),
      ),
      Positioned(
        left: kPositionMap[onboardingData]![0],
        top: kPositionMap[onboardingData]![1],
        child: BasicCard(size: size),
      ),
    ];

    return SizedBox(
      height: size.height * 0.5,
      child: Stack(
        children: onboardingData == TranslucentCardLocation.back
            ? stackChildren.reversed.toList()
            : stackChildren,
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
    final provider = OnboardingDataProvider.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height * 0.1),
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
                onPressed: () => provider.toggleLocation(),
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
