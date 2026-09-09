import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workout_app/widgets/ScaffoldBackground.dart';
import 'package:workout_app/widgets/headingText.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: SizedBox(
            width: 2,
            height: 2,
            child: SvgPicture.asset('assets/icons/logo.svg'),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CircleAvatar(radius: 20, backgroundColor: Colors.black, child: Icon(Icons.bluetooth, color: Colors.orangeAccent,),),
          ),
        ],
      ),
      body: Stack(
          children: [
            Scaffoldbackground(),
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 100),
                    Container(
                      width: screenWidth * 0.92,
                      height: screenHeight * 0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: RadialGradient(
                          center: Alignment.topRight,
                          radius: 1.0,
                          colors: [
                            Color.fromARGB(255, 217, 123, 9),
                            Colors.black,
                          ],
                          stops: [0.0, 0.95],
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: screenWidth * 0.4,
                                          height: 25,
                                          child: Row(
                                            children: [
                                              SvgPicture.asset(
                                                'assets/icons/logo.svg',
                                              ),
                                              SizedBox(width: 8),
                                              Headingtext(
                                                text: 'Helios',
                                                size: 15,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Welcome back,',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
      
                                    Row(
                                      children: [
                                        Text(
                                          'Nick!',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            color: const Color.fromARGB(
                                              255,
                                              250,
                                              141,
                                              17,
                                            ),
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Try Premium Now',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    
                    Container(
                      child: Column(
                        children: [
                          Text('Overall Progress:', style: TextStyle(),),
                          LinearPercentIndicator(
                            width: 20,
                            linearGradientBackgroundColor: LinearGradient(colors: [const Color.fromARGB(255, 253, 162, 58), const Color.fromARGB(255, 255, 98, 0)]),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}