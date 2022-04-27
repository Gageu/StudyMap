import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:study_map/data_architecture/events.dart';

class GroupScreen extends StatefulWidget {
  const GroupScreen({Key? key}) : super(key: key);

  @override
  _GroupScreenState createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  //group should have text boxes to create a group

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Groups',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Group Creation'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
