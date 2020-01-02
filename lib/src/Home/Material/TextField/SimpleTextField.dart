import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class SimpleTextFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Simple TextFields'),
          backgroundColor: theamColor,
        ),
        body: ListView(children: <Widget>[
          Container(
              padding: const EdgeInsets.all(30.0),
              child: Column(children: const <Widget>[
                UnderlineTextField(),
                LabelUnderlineTextField(),
                SimpleTextField(),
                LabelTextField(),
                RoundTextField(),
                RoundLabelTextField(),
                MultiLineTextField(),
                LabelMultiLineTextField(),
              ]))
        ]));
  }
}

// ===== Simple UnderLine TextField =========

class UnderlineTextField extends StatelessWidget {
  const UnderlineTextField();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Place Holder',
        ),
      ),
    );
  }
}

// ===== UnderLine TextField with LabelText =========

class LabelUnderlineTextField extends StatelessWidget {
  const LabelUnderlineTextField();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const TextField(
        decoration: InputDecoration(
          labelText: 'Label Text',
          hintText: 'Place Holder',
        ),
      ),
    );
  }
}

// ===== Box TextField =========

class SimpleTextField extends StatelessWidget {
  const SimpleTextField();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'simple TextField',
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
        ),
      ),
    );
  }
}

// ===== Box TextField with Labeltext =========

class LabelTextField extends StatelessWidget {
  const LabelTextField();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: const TextField(
        decoration: InputDecoration(
          labelText: 'Label Text',
          hintText: 'Place Holder',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

// ===== Round TextField =========

class RoundTextField extends StatelessWidget {
  const RoundTextField();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'round TextField',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    );
  }
}

// ===== Round TextField with LabelText=========

class RoundLabelTextField extends StatelessWidget {
  const RoundLabelTextField();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'label with Round TextField',
          hintText: 'round TextField',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    );
  }
}

// ===== MultiLine TextField =========

class MultiLineTextField extends StatelessWidget {
  const MultiLineTextField();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: const TextField(
        maxLines: 3,
        decoration: InputDecoration(
          hintText: ' Text Area',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

// ===== MultiLine TextField with LabeltextField =========

class LabelMultiLineTextField extends StatelessWidget {
  const LabelMultiLineTextField();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: const TextField(
        maxLines: 4,
        decoration: InputDecoration(
          labelText: 'MultiLine TextField',
          hintText: ' Text Area',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
