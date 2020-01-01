import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class SubTitleAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: theamColor,
            title: Column(children: [
              const Text(
                'Title',
              ),
              GestureDetector(
                child: const Text('subtitle'),
                onTap: () {
                  print('tapped subtitle');
                },
              )
            ])),
        body: Container(
          alignment: Alignment.center,
          child: const Text(
            'Title and SubTitle in AppBar',
          ),
        ));
  }
}
