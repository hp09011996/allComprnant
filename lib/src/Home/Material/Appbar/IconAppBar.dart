import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class IconAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('App Bar with icon'),
            backgroundColor: theamColor,
            actions: [
              IconButton(
                icon: Icon(Icons.add_alert),
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.close),
                color: Colors.white,
                onPressed: () {},
              )
            ]),
        body: Container(
          alignment: Alignment.center,
          child: const Text('AppBar with Icon'),
        ));
  }
}
