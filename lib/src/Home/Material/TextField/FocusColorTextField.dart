import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class FocusColorTextFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Border Color TextFields'),
          backgroundColor: theamColor,
        ),
        body: ListView(children: <Widget>[
          Container(
              padding: const EdgeInsets.all(30.0),
              child: Column(children: const <Widget>[
                UnderlineTextField(),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                ),
                LabelUnderlineTextField(),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                ),
                LabelTextField(),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                ),
                RoundTextField(),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                ),
                LabelMultiLineTextField(),
              ]))
        ]));
  }
}

// ===== color border in TextField =====

class UnderlineTextField extends StatelessWidget {
  const UnderlineTextField();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(primaryColor: Colors.red),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Place Holder',
          border: const UnderlineInputBorder(),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: theamColor)),
        ),
      ),
    );
  }
}

// ===== color border & label in TextField =====

class LabelUnderlineTextField extends StatelessWidget {
  const LabelUnderlineTextField();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(primaryColor: theamColor),
      child: const TextField(
        decoration: InputDecoration(
          labelText: 'Label Text',
          hintText: 'Place Holder',
          border: UnderlineInputBorder(),
        ),
      ),
    );
  }
}

// ===== color border & label in BoxTextField =====

class LabelTextField extends StatelessWidget {
  const LabelTextField();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(primaryColor: theamColor),
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

// ===== color boder in RoundextField =====

class RoundTextField extends StatelessWidget {
  const RoundTextField();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(primaryColor: theamColor),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'round TextField',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    );
  }
}

// ===== color border & label in MultiTextField =====

class LabelMultiLineTextField extends StatelessWidget {
  const LabelMultiLineTextField();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(primaryColor: theamColor),
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
