import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workout_app/widgets/YellowgradientButton.dart';
import 'package:workout_app/widgets/headingText.dart';

class Cardbanner extends StatelessWidget {
  const Cardbanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListView(
        children: [
          Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
