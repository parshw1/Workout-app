import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workout_app/widgets/ScaffoldBackground.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        forceMaterialTransparency: true,
        title: SvgPicture.asset('assets/icons/logo.svg'),
      ),
      body: Stack(
        children: [
          const Scaffoldbackground(),

        ],
      ),
    );
  }
}