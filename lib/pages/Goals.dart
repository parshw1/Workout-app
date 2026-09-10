import 'package:flutter/material.dart';
import 'package:workout_app/widgets/ScaffoldBackground.dart';

class Goalspage extends StatelessWidget {
  const Goalspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Goals',
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Container(
      
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100),
            Row(
              children: [
                Text('Overall progress', style: TextStyle()),
                SizedBox(height: 10),
                LinearProgressIndicator(value: 0.7),
              ],
            ),
          ],
        ),
      ),
    )
      
    );
  }
}
