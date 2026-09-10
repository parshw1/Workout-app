import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workout_app/pages/navigation.dart';
import 'package:workout_app/widgets/ScaffoldBackground.dart';
import 'package:workout_app/widgets/headingText.dart';
import 'package:workout_app/widgets/YellowgradientButton.dart';

class Accountpage extends StatelessWidget {
  const Accountpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        forceMaterialTransparency: true,
        title: SvgPicture.asset('assets/icons/loginpagelogo.svg'),
        centerTitle: true,
      ),
      body: Scaffoldbackground(
        widget: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 100),
                Headingtext(text: 'Create an Account', size: 25),
                SizedBox(height: 10),
                Text(
                  'Help us finish settng up your account.',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 343,
                  height: 25,
                  child: Row(
                    children: [
                      Text('Username', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                SizedBox(
                  width: 343,
                  height: 63,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'E.g Johntheone',
                      hintStyle: TextStyle(color: Color(0xFFC6C6C6)),
                      prefixIcon: const Icon(
                        Icons.email,
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
                SizedBox(height: 10),
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
                SizedBox(height: 10),
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
                        Icons.remove_red_eye,
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
                SizedBox(height: 10),
                SizedBox(
                  width: 343,
                  height: 25,
                  child: Row(
                    children: [
                      Text(
                        'Confirm password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 343,
                  height: 63,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Confirm password',
                      hintStyle: TextStyle(color: Color(0xFFC6C6C6)),
                      prefixIcon: const Icon(
                        Icons.email,
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
                SizedBox(height: 150),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(25),
        child: GradientButton(
          text: 'Continue',
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Navigation()),
            );
          },
        ),
      ),
    );
  }
}
