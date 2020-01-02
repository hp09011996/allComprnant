import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class FillColorTextFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Color TextFields'),
          backgroundColor: theamColor,
        ),
        body: ListView(children: <Widget>[
          Container(
              padding: const EdgeInsets.all(30.0),
              child: Column(children: const <Widget>[
                BoxColorTextField(),
                LabelBoxColorTextField(),
                IconBoxColorTextField(),
                SuffixIconColorBoxTextField(),
                RoundColorTextField(),
                LabelRoundColorTextField(),
                IconColorTextField(),
                SuffixIconColorTextField(),
              ]))
        ]));
  }
}

// ==== fillColor in BoxTextField ====

class BoxColorTextField extends StatelessWidget {
  const BoxColorTextField();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'fillColor TextField',
          border: const OutlineInputBorder(),
          fillColor: Colors.pink[50],
          filled: true,
        ),
      ),
    );
  }
}

// ====== fill color with label in BoxTextField =======
class LabelBoxColorTextField extends StatelessWidget {
  const LabelBoxColorTextField();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Label with Color Textfield',
          hintText: 'Label with TextField',
          border: const OutlineInputBorder(),
          fillColor: Colors.blue[50],
          filled: true,
        ),
      ),
    );
  }
}

// ===== fill color with prefixIcon & label in BoxTextField ======

class IconBoxColorTextField extends StatelessWidget {
  const IconBoxColorTextField();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'prefixIcon & Label',
          hintText: 'prefixIcon & Label',
          border: const OutlineInputBorder(),
          prefixIcon: Icon(
            Icons.add_alert,
            color: theamColor,
          ),
          fillColor: Colors.indigo[50],
          filled: true,
        ),
      ),
    );
  }
}

// ====== fill color with suffixIcon & label in BoxTextField =====

class SuffixIconColorBoxTextField extends StatelessWidget {
  const SuffixIconColorBoxTextField();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Label with Color RoundTextfield',
          hintText: 'Label with RoundTextField',
          border: const OutlineInputBorder(),
          suffixIcon: Icon(
            Icons.add_box,
            color: theamColor,
          ),
          fillColor: Colors.purple[50],
          filled: true,
        ),
      ),
    );
  }
}

// ===== fill color in RoundTextField =========

class RoundColorTextField extends StatelessWidget {
  const RoundColorTextField();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'fillColor RoundTextField',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            fillColor: Colors.grey[200],
            filled: true),
      ),
    );
  }
}

// ===== fill color with label in RoundTextField =========

class LabelRoundColorTextField extends StatelessWidget {
  const LabelRoundColorTextField();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
            labelText: 'Label with Color RoundTextfield',
            hintText: 'Label with RoundTextField',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            fillColor: Colors.grey[300],
            filled: true),
      ),
    );
  }
}

// ===== fill color with prefixIcon & label in RoundTextField =========

class IconColorTextField extends StatelessWidget {
  const IconColorTextField();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Label with Color RoundTextfield',
          hintText: 'Label with RoundTextField',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          prefixIcon: Icon(
            Icons.add_circle,
            color: theamColor,
          ),
          fillColor: Colors.blueGrey[50],
          filled: true,
        ),
      ),
    );
  }
}

// ===== fill color with suffixIcon & label in RoundTextField =========

class SuffixIconColorTextField extends StatelessWidget {
  const SuffixIconColorTextField();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Label with Color RoundTextfield',
          hintText: 'Label with RoundTextField',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          suffixIcon: Icon(
            Icons.insert_comment,
            color: theamColor,
          ),
          fillColor: Colors.blueGrey[100],
          filled: true,
        ),
      ),
    );
  }
}
