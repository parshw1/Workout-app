import 'package:flutter/material.dart';

class Headingtext extends StatelessWidget {
  final String text;
  const Headingtext({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 34,
        color: Colors.white,
      ),
    );
  }
}
