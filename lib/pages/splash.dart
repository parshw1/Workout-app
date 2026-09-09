import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workout_app/widgets/ScaffoldBackground.dart';
import 'package:workout_app/widgets/YellowgradientButton.dart';
import 'package:workout_app/pages/LoginPage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Scaffoldbackground(),
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 150,),
                  SvgPicture.asset('assets/icons/logo.svg', width: screenWidth*0.25),
                  SizedBox(height: 2),
                  Text(
                    'Helios Sports Tech',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.07,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Here To Compete.',
                    style: TextStyle(fontSize: screenWidth * 0.04, color: Color(0xFFC0C0C0)),
                  ),
                  SizedBox(height: 400,),
                  GradientButton(
                    text: 'Get started', 
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Loginpage()));
                    }),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
