import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class SimpleAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('App Bar'),
          backgroundColor: theamColor,
        ),
        body: Container(
          alignment: Alignment.center,
          child: const Text(
            'Simple AppBar',
          ),
        ));
  }
}
