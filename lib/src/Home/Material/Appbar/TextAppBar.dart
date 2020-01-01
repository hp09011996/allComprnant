import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class TextAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('App Bar with Text'),
          backgroundColor: theamColor,
          actions: <Widget>[
            FlatButton(
              textColor: Colors.white,
              onPressed: () {},
              child: const Text(
                'Save',
              ),
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
            ),
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          child: const Text('AppBar with Text'),
        ));
  }
}
