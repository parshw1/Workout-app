import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workout_app/pages/Calender.dart';
import 'package:workout_app/pages/Goals.dart';
import 'package:workout_app/pages/Workout.dart';
import 'package:workout_app/pages/profile.dart';
import 'package:workout_app/widgets/ScaffoldBackground.dart';
import 'package:workout_app/widgets/YellowgradientButton.dart';
import 'package:workout_app/widgets/headingText.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    Homepage(),
    Goalspage(),
    WorkoutScreen(),
    ProfileScreen(),
    CalenderScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
            child: CircleAvatar(radius: 20),
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
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: screenWidth * 0.92,
        height: screenHeight * 0.10,
        decoration: 
        BoxDecoration(
          borderRadius: BorderRadius.circular(8)
        ),
        child: NavigationBar(
          selectedIndex: _currentIndex,

          onDestinationSelected: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },

          destinations: const <NavigationDestination>[
            NavigationDestination(
              icon: Icon(Icons.home_outlined),

              selectedIcon: Icon(Icons.home),

              label: 'Home',
            ),

            NavigationDestination(
              icon: Icon(Icons.fitness_center_outlined),

              selectedIcon: Icon(Icons.fitness_center),

              label: 'Search',
            ),

            NavigationDestination(
              icon: Icon(Icons.person_outline),

              selectedIcon: Icon(Icons.person),

              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
