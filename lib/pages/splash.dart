import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workout_app/widgets/YellowgradientButton.dart';
import 'package:workout_app/pages/LoginPage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 89, 86, 86),
                  Color.fromARGB(255, 24, 24, 24),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(height: 150),
                SvgPicture.asset('assets/icons/logo.svg'),
                SizedBox(height: 2),
                Text(
                  'Helios Sports Tech',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Here To Compete.',
                  style: TextStyle(fontSize: 21, color: Color(0xFFC0C0C0)),
                ),
                SizedBox(height: 450),
                GradientButton(
                  text: 'Get started', 
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Loginpage()));
                  })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
