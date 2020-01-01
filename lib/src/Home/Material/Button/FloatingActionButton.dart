import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class FloatingActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FloatingAction Button'),
          backgroundColor: theamColor,
        ),
        body: ListView(children: <Widget>[
          Container(
              padding: const EdgeInsets.all(30.0),
              child: Column(children: const <Widget>[
                SimpleFloatingButton(),
                LabelFloatingButton(),
                ColorIconFloatingButton(),
                BackColorFloatingButton(),
                MiniFloatingButton(),
                SquareFloatingButton(),
                RadiusFloatingButton(),
                BorderColorFloatingButton(),
                ShadowFloatingButton()
              ]))
        ]));
  }
}

// ====== Simple FloatingAction Button =====
class SimpleFloatingButton extends StatelessWidget {
  const SimpleFloatingButton();
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'btn1',
      onPressed: () {},
      child: Icon(Icons.add),
    );
  }
}

// ====== Label in FloatingAction Button =====

class LabelFloatingButton extends StatelessWidget {
  const LabelFloatingButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: FloatingActionButton.extended(
        heroTag: 'brn2',
        onPressed: () {},
        icon: Icon(Icons.save),
        label: const Text(
          'Save',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

// ===== Change color of icon in FloatingAction Button =====

class ColorIconFloatingButton extends StatelessWidget {
  const ColorIconFloatingButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: FloatingActionButton(
        heroTag: 'btn3',
        onPressed: () {},
        child: Icon(
          Icons.room,
        ),
        foregroundColor: theamColor,
      ),
    );
  }
}

// ====== Change Backgroundcolor in FloatingAction Button =====

class BackColorFloatingButton extends StatelessWidget {
  const BackColorFloatingButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: FloatingActionButton(
        heroTag: 'btn4',
        onPressed: () {},
        child: Icon(
          Icons.check_circle,
        ),
        backgroundColor: theamColor,
      ),
    );
  }
}

// ===== decresse size of FloatingAction Button ======

class MiniFloatingButton extends StatelessWidget {
  const MiniFloatingButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: FloatingActionButton(
        heroTag: 'btn5',
        onPressed: () {},
        child: Icon(
          Icons.call_end,
        ),
        mini: true,
      ),
    );
  }
}

// ====== square FloatingAction Button ======

class SquareFloatingButton extends StatelessWidget {
  const SquareFloatingButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: FloatingActionButton(
        heroTag: 'btn6',
        onPressed: () {},
        child: Icon(
          Icons.music_note,
        ),
        shape: const RoundedRectangleBorder(),
      ),
    );
  }
}

// ====== Change radius of border in FloatingAction Button ======

class RadiusFloatingButton extends StatelessWidget {
  const RadiusFloatingButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: FloatingActionButton(
        heroTag: 'btn7',
        onPressed: () {},
        child: Icon(
          Icons.bluetooth,
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
      ),
    );
  }
}

// ====== Change color of border in FloatingAction Button ======
class BorderColorFloatingButton extends StatelessWidget {
  const BorderColorFloatingButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: FloatingActionButton(
        heroTag: 'btn8',
        onPressed: () {},
        child: Icon(
          Icons.add_circle,
        ),
        shape: RoundedRectangleBorder(
            side: BorderSide(color: theamColor, width: 3.0)),
      ),
    );
  }
}

// ====== Shadow FLoating Button ======

class ShadowFloatingButton extends StatelessWidget {
  const ShadowFloatingButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: FloatingActionButton(
        heroTag: 'btn9',
        onPressed: () {},
        child: Icon(Icons.arrow_back),
        elevation: 30.0,
      ),
    );
  }
}
