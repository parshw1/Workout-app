import 'package:flutter/material.dart';
import 'package:workout_app/widgets/ScaffoldBackground.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Calender', style: TextStyle(color: Color(0xFF)),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(child: Stack(children: [Scaffoldbackground()])),
    );
  }
}