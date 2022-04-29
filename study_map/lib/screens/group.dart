import 'package:flutter/material.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({Key? key}) : super(key: key);

  static const String _title = 'Group Creation Screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(_title),
          ),
          body: const MyStatefulWidget(),
        ));
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  late TextEditingController _controller;
  String displayText = "";
  String memberText = "Members: ";
  List<String> accountMembers = [
    "balls"
  ]; //replace this with current account once everything is linked

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
          //adding completely new groups
          controller: _controller,
          decoration: const InputDecoration(labelText: "Group Name:"),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                String memberList = accountMembers.join(", ");
                displayText =
                    _controller.text + " - " + memberText + memberList;
              });
            },
            child: const Text("Create Group")),
        Text(
          displayText,
          style: const TextStyle(fontSize: 20),
        )
      ]),
    );
  }
}
