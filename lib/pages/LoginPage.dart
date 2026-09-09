import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workout_app/widgets/ScaffoldBackground.dart';
import 'package:workout_app/widgets/headingText.dart';
import 'package:workout_app/widgets/YellowgradientButton.dart';
import 'package:workout_app/pages/createAccountPage.dart';
import 'package:workout_app/pages/homepageNavigation.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

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
          SingleChildScrollView(
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
                      text: 'Login',
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Homepage()),
                        );
                      },
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 40,),
                        Text("Don't have an Account?", style: TextStyle(color: Colors.white),),
                        SizedBox(height: 10,),
                        TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Accountpage()));
                          }, 
                          child: Text('Sign Up', style: TextStyle(color: const Color.fromARGB(255, 219, 113, 0)),))
                      ],
                    ),
                    SizedBox(height: 140,),
                    Text('Alternatively Login with:', style: TextStyle(color: Colors.white),),
                    Container(
                      width: 343,
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
