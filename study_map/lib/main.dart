/*
StudyMap :
A mobile/web app that uses maps to help people find study sessions
Description :
  The idea behind this project is to create a mobile / web app that uses the
google maps api and some sort of database backend to allow users to post and
schedule physical and virtual study sessions. We are also interested in canvas
integration using their api to allow users to create study sessions for certain 
assignments, classes, and projects. Canvas integration could also allow for 
notifications to be received on study sessions scheduled for classes that that 
individual has.
*/

//import 'dart:js';
import 'package:flutter/material.dart';
import 'screens/calendar.dart';
import 'package:study_map/screens/login.dart';
import 'package:study_map/screens/calendar.dart';
import 'package:study_map/screens/study_map.dart';
import 'screens/group.dart';

//This is the main file of our app, where everything starts.
//Things that should go in this file are as follows:
//  - The initialization of the corresponding route names to your files
//  - Any overarching data the needs to be access by all the independent components
//
//  The code begins execution at the call of the main function obviously.
// Flutter is a declarative framework, this means that all of he elements that
// we will be creating will be difined by classes that represent individual
// pieces of our UI and other app finction. Because of this there are a few
// unique stylistic choices that dart syntax uses. The main one that you will
// encounter in Flutter that is different than previous languages is the named
// parameters for functions and class constructors. This is what we see bellow
// with the creation of a MeterialApp class and then defining different elements
// of the class by name and evene passing in newly created classes as the values
// for some of the properties. This is what facilitates this nested stye of UI
// design. For more erading I encourage you to go to:
// https://dart.dev/codelabs/dart-cheatsheet
//
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Study Map',
    theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue, accentColor: Colors.tealAccent)),

    /*The routes preperty of the Material App is responsible for telling the 
      built in Navigator class the names of the different screens the user can
      be on and the Classes that represent the UI that is displayed for every
      screen. This is intended to be similar to the way a website route system
      works with te key distinction being that the navigator works on a stack 
      system that allows for different routes to be navigated to and from in the
      order the user access them. Making the user experience more intuitive.

      To navigate to a route use:
      Navigator.pushNamed()
      To go back to previous screen use:
      Navigator.pop()
    */
    initialRoute: '/study_map',
    routes: {
      // '/' : (conetxt) Loading();
      '/study_map': (context) => const StudyMap(),
      '/calendar': (context) => const CalendarScreen(),
      '/group': (context) => const GroupScreen(),
      '/login': (context) => const LoginDemo(),
    },
  ));
}
