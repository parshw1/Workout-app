import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class ListCard extends StatefulWidget {
  const ListCard({super.key});

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  List<dynamic> carddata = [];
  @override
  void initState() {
    super.initState();
    loadExercises();
  }

  Future<List<dynamic>> loadExercises() async {
  final String jsonString =
      await rootBundle.loadString('assets/data/homepage.json');

  final List<dynamic> data = jsonDecode(jsonString);

  setState(() {
    carddata = data;
  });
  print (carddata);
  return carddata;
}
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: carddata.length,
        itemBuilder: (context, index) {
          final item = carddata[index];
          return ListTile(
            title: Text(item['title'], style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 16),),
            subtitle: Text(item['heading'], style: TextStyle(color: const Color.fromARGB(179, 0, 0, 0), fontSize: 14),),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(item['Duration'], style: TextStyle(color: const Color.fromARGB(179, 0, 0, 0), fontSize: 14),),
                Text('${item['reps']} reps', style: TextStyle(color: const Color.fromARGB(179, 0, 0, 0), fontSize: 14),),
                Text('${item['sets']} sets', style: TextStyle(color: const Color.fromARGB(179, 7, 2, 2), fontSize: 14),),
                Text('${item['exercise']} cal', style: TextStyle(color: const Color.fromARGB(179, 0, 0, 0), fontSize: 14),),
              ],
            ),
          );
        },
      ),
    );
  }
}
