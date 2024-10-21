import 'package:flutter/material.dart';
import 'package:voice_assistant_chat/widgets/pallet.dart';

class FeatureBox extends StatelessWidget {
  final Color color;
  final String headerText;
  final String descriptionText;
  const FeatureBox(
      {super.key,
      required this.color,
      required this.headerText,
      required this.descriptionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headerText,
              style: const TextStyle(
                  color: Pallete.blackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              descriptionText,
              style: const TextStyle(
                color: Pallete.blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
