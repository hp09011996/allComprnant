import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class RaisedButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Raised Buttons'),
          backgroundColor: theamColor,
        ),
        body: ListView(children: <Widget>[
          Container(
              padding: const EdgeInsets.all(30.0),
              child: Column(children: const <Widget>[
                SimpleButtons(),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                RoundCornerButton(),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                CustomButton(),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                CustomRoundButton(),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                GradientButton(),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                GradientRoundButton(),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                ShadowButton(),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                ShadowRoundButton(),
              ]))
        ]));
  }
}

// ===== Simple Raised Button =====

class SimpleButtons extends StatelessWidget {
  const SimpleButtons();
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: const Text(
        'Simple',
      ),
      onPressed: () {},
    );
  }
}

// ===== Round Button =====
class RoundCornerButton extends StatelessWidget {
  const RoundCornerButton();
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: RaisedButton(
        child: const Text('Round', style: TextStyle(color: Colors.white)),
        onPressed: () {},
      ),
    );
  }
}

// ===== Custom Button(set height & width) ======

class CustomButton extends StatelessWidget {
  const CustomButton();
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 150.0,
      height: 40.0,
      child: RaisedButton(
        child: const Text('Custom', style: TextStyle(color: Colors.white)),
        onPressed: () {},
      ),
    );
  }
}

// ======  set Height & width in custom RoundButton ======
class CustomRoundButton extends StatelessWidget {
  const CustomRoundButton();
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      minWidth: 170.0,
      height: 40.0,
      child: RaisedButton(
        child:
            const Text('Custom Round', style: TextStyle(color: Colors.white)),
        onPressed: () {},
      ),
    );
  }
}

// ==== Gradiant Background Color in Button ====

class GradientButton extends StatelessWidget {
  const GradientButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 50.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.pink,
              theamColor,
            ],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[500],
              offset: const Offset(0.0, 1.5),
              blurRadius: 1.5,
            ),
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: () {},
            child: const Center(
              child: Text('Gradiant', style: TextStyle(color: Colors.white)),
            )),
      ),
    );
  }
}

// ====== Gradiant Background Color in RoundButton ======

class GradientRoundButton extends StatelessWidget {
  const GradientRoundButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 50.0,
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
          boxShadow: [
            BoxShadow(
              color: Colors.grey[500],
              offset: const Offset(0.0, 1.5),
              blurRadius: 1.5,
            ),
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: () {},
            child: const Center(
              child: Text('Gradiant', style: TextStyle(color: Colors.white)),
            )),
      ),
    );
  }
}

// ====== Shadow Button ======

class ShadowButton extends StatelessWidget {
  const ShadowButton();
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 250.0,
      height: 50.0,
      child: RaisedButton(
        elevation: 30.0,
        child: const Text('Shadow', style: TextStyle(color: Colors.white)),
        color: Colors.pink,
        onPressed: () {},
      ),
    );
  }
}

// ====== Shadow RoundButton ======

class ShadowRoundButton extends StatelessWidget {
  const ShadowRoundButton();
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      minWidth: 300.0,
      height: 50.0,
      child: RaisedButton(
        elevation: 30.0,
        child:
            const Text('Shadow Round', style: TextStyle(color: Colors.white)),
        color: theamColor,
        onPressed: () {},
      ),
    );
  }
}
