import 'package:flutter/material.dart';
import 'screens/calendar.dart';
import 'package:study_map/screens/study_map.dart';
import 'screens/group.dart';

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
      '/calendar': (context) => const CalendarScreen(),
      '/group': (context) => const GroupScreen()
    },
  ));
}
