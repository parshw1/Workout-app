import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workout_app/widgets/ScaffoldBackground.dart';
import 'package:workout_app/widgets/headingText.dart';
import 'package:workout_app/widgets/YellowgradientButton.dart';
import 'package:workout_app/pages/homepage.dart';

class Accountpage extends StatelessWidget {
  const Accountpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        forceMaterialTransparency: true,
        title: SvgPicture.asset('assets/icons/loginpagelogo.svg'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          const Scaffoldbackground(),
          Center(
            child: Column(
              children: [
                SizedBox(height: 100),
                Headingtext(text: 'Create an Account', size: 25),
                SizedBox(height: 10),
                Text('Help us finish settng up your account.', style: TextStyle(color: Colors.white),),
                SizedBox(
                  width: 343,
                  height: 25,
                  child: Row(
                    children: [
                      Text('Email', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                SizedBox(
                  width: 343,
                  height: 63,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your email address',
                      hintStyle: TextStyle(color: Color(0xFFC6C6C6)),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Color(0xFFC6C6C6),
                      ),
                      suffixIcon: const Icon(
                        Icons.lock,
                        color: Color(0xFFC6C6C6),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 77, 77, 83),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 343,
                  height: 25,
                  child: Row(
                    children: [
                      Text('Password', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                SizedBox(
                  width: 343,
                  height: 63,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(color: Color(0xFFC6C6C6)),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Color(0xFFC6C6C6),
                      ),
                      suffixIcon: const Icon(
                        Icons.lock,
                        color: Color(0xFFC6C6C6),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 77, 77, 83),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
                SizedBox(
                  width: 343,
                  height: 40,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: null,
                        child: Text('Forgot Password?', style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60),
                GradientButton(
                  text: 'Create Account',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                ),
                SizedBox(height: 15,),
                Container(
                  width: 343,
                  height: 50,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
