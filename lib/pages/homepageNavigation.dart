import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workout_app/pages/Calender.dart';
import 'package:workout_app/pages/Goals.dart';
import 'package:workout_app/pages/HomeScreenContent.dart';
import 'package:workout_app/pages/Workout.dart';
import 'package:workout_app/pages/profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    Goalspage(),
    WorkoutScreen(),
    CalenderScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,

      body: _screens[_currentIndex],

      bottomNavigationBar: Container(
        height: screenHeight*0.09,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.grey, Colors.black])
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(70),
          child: BottomNavigationBar(
            
            selectedItemColor: Colors.deepOrangeAccent,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'Workout'),
              BottomNavigationBarItem(icon: Image(image: AssetImage('assets/images/create.png')), label: 'Create'),
              BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: 'Calendar'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
