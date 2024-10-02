import 'package:best_travel_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/onboarding/travellings.png"),
        const SizedBox(
          height: 25,
        ),
        const MyCustomText(
          text: "Fly to Destination",
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
                "Finally, get ready for the tour and go to your desire destination.",
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
