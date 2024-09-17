import 'package:best_travel_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/onboarding/destination.png"),
        const SizedBox(
          height: 25,
        ),
        const MyCustomText(
          text: "Choose a Destination",
          fSize: 28,
          fWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: const MyCustomText(
            maxLines: 2,
            tAlign: TextAlign.center,
            text:
                "Select a place for your trip easily and know the exact cost of the tour.",
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
