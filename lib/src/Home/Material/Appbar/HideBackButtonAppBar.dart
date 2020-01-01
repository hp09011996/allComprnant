import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class HideBackBtnAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hide backButton'),
          backgroundColor: theamColor,
          leading: Container(),
          actions: <Widget>[
            FlatButton(
              textColor: Colors.white,
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          child: const Text(
            'Hide back Button in AppBar',
          ),
        ));
  }
}
