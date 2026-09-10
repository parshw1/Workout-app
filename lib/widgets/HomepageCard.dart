import 'dart:convert';
import 'package:flutter/services.dart';

Future<List<dynamic>> loadExercises() async {
  final String jsonString =
      await rootBundle.loadString('assets/data/exercises.json');

  final List<dynamic> data = jsonDecode(jsonString);

  return data;

  
}