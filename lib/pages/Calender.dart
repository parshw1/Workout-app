import 'package:flutter/material.dart';
import 'package:workout_app/widgets/ScaffoldBackground.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender extends StatelessWidget {
  const Calender({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Calender',
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
      ),
      body: Scaffoldbackground(
        widget: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 80),
              
              TableCalendar(
                headerStyle: HeaderStyle(
                  titleCentered: true,
                  formatButtonVisible: false,
                  titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
                ),
                calendarFormat: CalendarFormat.month,
                calendarStyle: CalendarStyle(
                  
                  outsideTextStyle: TextStyle(color: Colors.white),
                  defaultTextStyle: TextStyle(color: Colors.white),
                  tablePadding: EdgeInsets.all(15),
                  todayDecoration: BoxDecoration(
                    
                    color: Colors.deepOrangeAccent,
                    shape: BoxShape.circle,
                  ),
                  selectedDecoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
                availableGestures: AvailableGestures.all,
                firstDay: DateTime.utc(2020, 1, 1),
                lastDay: DateTime.utc(2030, 12, 31),
                focusedDay: DateTime.now(),
              ),
              SizedBox(height: 70),
              Text('No Scheduled Plans Today', style: TextStyle(color: Colors.grey, fontSize: 20)),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {},
                child: Text('+ Add Plan', style: TextStyle(color: Colors.orangeAccent)),
                style: OutlinedButton.styleFrom(
                  shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(color: Colors.orangeAccent),
                ),
              )
            ],
          ),
          
        ),
      ),
    );
  }
}
