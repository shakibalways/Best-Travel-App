import 'package:best_travel_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/onboarding/mountain.png"),
        const SizedBox(height: 25),
        const MyCustomText(
          text: "Explore Destinations",
          fSize: 28,
          fWeight: FontWeight.bold,
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: const MyCustomText(
            maxLines: 2,
            tAlign: TextAlign.center,
            text:
                "Discover the places for your trip in the world and feel great.",
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
