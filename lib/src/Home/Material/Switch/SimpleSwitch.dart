import 'package:flutter/material.dart';

class SimpleSwitch extends StatefulWidget {
  @override
  _SimpleSwitchState createState() => _SimpleSwitchState();
}

class _SimpleSwitchState extends State<SimpleSwitch> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Switch'),
      ),
      body: Center(
        child: Switch(
          value: isSwitched,
          onChanged: (value) {
            setState(() {
              isSwitched = value;
            });
          },
          activeTrackColor: Colors.lightGreenAccent,
          activeColor: Colors.green,
        ),
      ),
    );
  }
}
