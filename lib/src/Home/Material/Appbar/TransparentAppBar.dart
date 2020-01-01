import 'package:flutter/material.dart';

class TransparentAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Transparent AppBar'),
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          alignment: Alignment.center,
          child: const Text(
            'Transparent AppBar',
          ),
        ));
  }
}
