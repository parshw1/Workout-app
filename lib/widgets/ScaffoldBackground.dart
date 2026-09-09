import 'package:flutter/material.dart';

class Scaffoldbackground extends StatelessWidget {
  const Scaffoldbackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 65, 60, 60),
                  Color.fromARGB(255, 0, 0, 0),
                ],
              ),
            ),
          );
  }
}