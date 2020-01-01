import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class FlatButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flat Buttons'),
          backgroundColor: theamColor,
        ),
        body: ListView(children: <Widget>[
          Container(
              padding: const EdgeInsets.all(30.0),
              child: Column(children: const <Widget>[
                SimpleButton(),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                BorderButton(),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                BorderRoundButton(),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                FillColorButton(),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                FillColorRoundButton(),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                GradientButton(),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                GradientRoundBtn(),
              ]))
        ]));
  }
}

// ===== Simple Flat Button =====

class SimpleButton extends StatelessWidget {
  const SimpleButton();
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: const Text(
        'Flat',
      ),
    );
  }
}

// ==== Boder in Flat Button ====

class BorderButton extends StatelessWidget {
  const BorderButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.pink, width: 2.0),
        // shape: BoxShape.circle,
      ),
      child: FlatButton(
        onPressed: () {},
        child: const Text(
          'Border',
        ),
      ),
    );
  }
}

// ===== Boder in Round FlatButton =====

class BorderRoundButton extends StatelessWidget {
  const BorderRoundButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(color: theamColor, width: 2.0),
      ),
      child: FlatButton(
        onPressed: () {},
        child: const Text(
          'RoundBorder',
        ),
      ),
    );
  }
}

// ===== fillColor & Border in FlatButton =====

class FillColorButton extends StatelessWidget {
  const FillColorButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.pink, width: 2.0),
          color: Colors.pink[50]),
      child: FlatButton(
        onPressed: () {},
        child: const Text('Fill Color Button'),
      ),
    );
  }
}

// ===== fillColor & Border in Round FlatButton ====
class FillColorRoundButton extends StatelessWidget {
  const FillColorRoundButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(color: theamColor, width: 2.0),
          color: Colors.indigo[50]),
      child: FlatButton(
        onPressed: () {},
        child: const Text('Fill Color Round Button'),
      ),
    );
  }
}

// ===== Gradiant Background Color in FlatButton ====

class GradientButton extends StatelessWidget {
  const GradientButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.pink,
            theamColor,
          ],
          begin: FractionalOffset.topLeft,
          end: FractionalOffset.bottomRight,
        ),
      ),
      child: FlatButton(
          child: const Text(
            'Gradiant color',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {}),
    );
  }
}

// ===== Gradiant Background Color in Round FlatButton =====

class GradientRoundBtn extends StatelessWidget {
  const GradientRoundBtn();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
          colors: [
            Colors.pink,
            theamColor,
          ],
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
        ),
      ),
      child: FlatButton(
          child: const Text('Gradiant Round',
              style: TextStyle(color: Colors.white)),
          onPressed: () {}),
    );
  }
}
