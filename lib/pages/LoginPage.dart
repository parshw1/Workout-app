import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workout_app/widgets/ScaffoldBackground.dart';
import 'package:workout_app/widgets/headingText.dart';

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
          const Headingtext(text: 'Login to your Account'),

        ],
      ),
    );
  }
}