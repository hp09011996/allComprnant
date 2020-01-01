import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class ButtonBars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ButtonBar Buttons'),
          backgroundColor: theamColor,
        ),
        body: ListView(children: <Widget>[
          Container(
              padding: const EdgeInsets.all(30.0),
              child: Column(children: const <Widget>[
                BarButton(),
                CustomBar(),
                RowButtonBar(),
              ]))
        ]));
  }
}

// ==== Simple Raised Button Bar ====

class BarButton extends StatelessWidget {
  const BarButton();
  @override
  Widget build(BuildContext context) {
    return ButtonBar(children: <Widget>[
      RaisedButton(
        child: const Text('Button 1'),
        onPressed: () {},
      ),
      RaisedButton(
        child: const Text('Button 2'),
        onPressed: () {},
      )
    ]);
  }
}

// ==== Button Bar with Custom Button ====

class CustomBar extends StatelessWidget {
  const CustomBar();
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        minWidth: 45.0,
        buttonColor: theamColor,
        child: ButtonBar(children: <Widget>[
          RaisedButton(
            child: const Text(
              'Button 1',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
          RaisedButton(
            child: const Text(
              'Button 2',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
        ]));
  }
}

// ==== Multiple Button in one Bar =====
class RowButtonBar extends StatelessWidget {
  const RowButtonBar();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        RaisedButton(
          child: const Text('Button 1'),
          onPressed: () => debugPrint('Button 1'),
        ),
        RaisedButton(
          child: const Text('Button 2'),
          onPressed: () => debugPrint('Button 2'),
        ),
        RaisedButton(
          child: const Text('Button 2'),
          onPressed: () => debugPrint('Button 2'),
        ),
      ],
    );
  }
}
