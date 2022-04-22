//import 'dart:js';
import 'package:flutter/material.dart';
import 'screens/calendar.dart';
import 'package:study_map/screens/login.dart';
import 'package:study_map/calendar.dart';
import 'package:study_map/screens/study_map.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue, accentColor: Colors.tealAccent)),
    initialRoute: '/study_map',
    routes: {
      // '/' : (conetxt) Loading();
      '/study_map': (context) => const StudyMap(),
      '/calendar': (context) => const CalendarScreen()
      '/login': (context) => const LoginDemo()
      '/calendar': (context) => const CalendarScreen(),
    },
  ));
}
