import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class IconButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Icon Buttons'),
          backgroundColor: theamColor,
        ),
        body: ListView(children: <Widget>[
          Container(
              padding: const EdgeInsets.all(30.0),
              child: Column(children: const <Widget>[
                ButtonWithIcon(),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                ColorIconButton(),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                BorderIconButton(),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                BackColorIconButton(),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                CustomIconButton(),
              ]))
        ]));
  }
}

// ===== Simple Icon Button =====

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon();
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.volume_up),
      onPressed: () {},
    );
  }
}

// ======= Change Color of icon in Icon Button ======

class ColorIconButton extends StatelessWidget {
  const ColorIconButton();
  @override
  Widget build(BuildContext context) {
    return IconButton(
      highlightColor: Colors.pink,
      color: Colors.pink,
      icon: Icon(Icons.add_alarm),
      onPressed: () {},
    );
  }
}

// ====== Apply Border Icon Button =====

class BorderIconButton extends StatelessWidget {
  const BorderIconButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: theamColor, width: 2.0),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        color: Colors.pink,
        onPressed: () {},
        icon: Icon(Icons.add_location),
      ),
    );
  }
}

// ====== Set Background color of Icon Button =======
class BackColorIconButton extends StatelessWidget {
  const BackColorIconButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.indigo[50],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        color: theamColor,
        onPressed: () {},
        icon: Icon(Icons.add_location),
      ),
    );
  }
}

// ====== Set size of icon Button =====

class CustomIconButton extends StatelessWidget {
  const CustomIconButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.indigo[50],
        border: Border.all(color: theamColor, width: 2.0),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        iconSize: 40,
        color: theamColor,
        onPressed: () {},
        icon: Icon(Icons.person_add),
      ),
    );
  }
}
