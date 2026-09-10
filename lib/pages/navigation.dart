import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workout_app/pages/home.dart';
import 'package:workout_app/pages/Goals.dart';
import 'package:workout_app/pages/Workout.dart';
import 'package:workout_app/pages/Calender.dart';
import 'package:workout_app/pages/profile.dart';
import 'package:workout_app/widgets/ScaffoldBackground.dart';
import 'package:workout_app/widgets/banner.dart';
import 'package:workout_app/widgets/headingText.dart';


class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
  
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
      // Add your pages here
      Home(),
      Goalspage(),
      Workout(),
      Calender(),
      Profile(),
    ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: _pages[_currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: EdgeInsets.all(20),
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [const Color.fromARGB(255, 41, 41, 41), Colors.black]),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                }, icon: Icon(Icons.home, color: Colors.grey,)),
                IconButton(onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                }, icon: Icon(Icons.fitness_center, color: Colors.grey,)),
                IconButton(onPressed: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                }, icon: Icon(Icons.add_circle, color: Colors.orangeAccent,)),
                IconButton(onPressed: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                }, icon: Icon(Icons.calendar_month, color: Colors.grey)),
                IconButton(onPressed: () {
                  setState(() {
                    _currentIndex = 4;
                  });
                }, icon: Icon(Icons.person, color: Colors.grey)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}