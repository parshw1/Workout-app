import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workout_app/widgets/ScaffoldBackground.dart';
import 'package:workout_app/widgets/gradientButton.dart';
import 'package:workout_app/pages/LoginPage.dart';
import 'package:workout_app/widgets/headingText.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Scaffoldbackground(
        widget: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
              SizedBox(height: 150),
              Center(
                child: Column(
                  children: [
                    Hero(tag: 'logo', child: Image.asset('assets/images/logo.png')),
                    SizedBox(height: 15,),
                    Text(
                      "Helios Sport Tech",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
                    ),
                    Text("Here To Compete.", style: TextStyle(fontSize: 16, color: Colors.white)),
                  ],
                ),
              ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsetsDirectional.all(25),
        child: GradientButton(text: 'Get Started', onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Loginpage()));
        }),
      ),
    );
  }
}
