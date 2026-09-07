import 'package:flutter/material.dart';

class Headingtext extends StatelessWidget {
  final String text;
  final double size;
  const Headingtext({super.key, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: size,
        color: Colors.white,
      ),
    );
  }
}
