import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import 'basic_card.dart';
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
    return SizedBox(
      height: size.height * 0.45,
      child: Stack(
        children: [
          Positioned(
            left: 30.0,
            top: 80.0,
            child: PersonalCard(size: size),
          ),
          Positioned(
            left: 90.0,
            top: 110.0,
            child: BasicCard(size: size),
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
