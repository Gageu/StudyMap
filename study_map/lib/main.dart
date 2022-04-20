import 'package:flutter/material.dart';
import 'package:study_map/screens/study_map.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    initialRoute: '/study_map',
    routes: {
      // '/' : (conetxt) Loading();
      '/study_map': (context) => const StudyMap()
    },
  ));
}
