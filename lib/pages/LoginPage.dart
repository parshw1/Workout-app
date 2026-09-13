import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workout_app/pages/navigation.dart';
import 'package:workout_app/widgets/ScaffoldBackground.dart';
import 'package:workout_app/widgets/headingText.dart';
import 'package:workout_app/widgets/gradientButton.dart';
import 'package:workout_app/pages/AccountPage.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        forceMaterialTransparency: true,
        title: Hero(tag: 'logo', child: Image.asset('assets/images/logo.png', width: 40,)),
        centerTitle: true,
      ),
      body: Scaffoldbackground(
        widget: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: 100),
                  Headingtext(text: 'Login to your Account', size: 25),
                  SizedBox(height: 50),
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
                          Icons.lock,
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
                      obscureText: true,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: null,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  GradientButton(
                    text: 'Login',
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Navigation()),
                      );
                    },
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 40),
                      Text(
                        "Don't have an Account?",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Accountpage(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 219, 113, 0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 110),
                  Text(
                    'Alternatively Login with:',
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: OutlinedButton(
                      onPressed: (){}, 
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.deepOrangeAccent)
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('assets/images/apple.png')),
                            SizedBox(width: 10,),
                            Headingtext(text: 'APPLE ID', size: 15)
                          ],
                        ),
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: OutlinedButton(
                      onPressed: (){}, 
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.deepOrangeAccent)
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('assets/images/google.png')),
                            SizedBox(width: 10,),
                            Headingtext(text: 'GOOGLE', size: 15)
                          ],
                        ),
                      )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
