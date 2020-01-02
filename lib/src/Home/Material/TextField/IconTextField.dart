import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class IconTextFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Icon TextFields'),
          backgroundColor: theamColor,
        ),
        body: ListView(children: <Widget>[
          Container(
              padding: const EdgeInsets.all(30.0),
              child: Column(children: const <Widget>[
                IconTextField(),
                PrefixIconTextField(),
                SuffixIconTextField(),
                IconBoxTextField(),
                PrefixIconBoxTextField(),
                SuffixIconBoxTextField(),
                ColorIconTextField(),
                ColorSuffixIconTextField(),
              ]))
        ]));
  }
}

// ===== Icon Underline TextField =====

class IconTextField extends StatelessWidget {
  const IconTextField();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.email),
          hintText: 'icon in Underline TextField',
        ),
      ),
    );
  }
}

// ===== underline TextField with prefixIcon =====

class PrefixIconTextField extends StatelessWidget {
  const PrefixIconTextField();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.print),
          hintText: 'icon with Underline TextField',
        ),
      ),
    );
  }
}

// ===== underline TextField with suffixIcon =====

class SuffixIconTextField extends StatelessWidget {
  const SuffixIconTextField();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.account_balance),
          hintText: 'Suffix icon with Underline TextField',
        ),
      ),
    );
  }
}

// ===== Icon BoxTextField =====

class IconBoxTextField extends StatelessWidget {
  const IconBoxTextField();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          icon: Icon(Icons.contact_phone),
          hintText: 'icon OutLine TextField',
        ),
      ),
    );
  }
}

// ===== BoxTextField with prefixIcon =====

class PrefixIconBoxTextField extends StatelessWidget {
  const PrefixIconBoxTextField();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          prefixIcon: Icon(Icons.date_range),
          hintText: 'Icon with Outline TextField',
        ),
      ),
    );
  }
}

// ===== BoxTextField with suffixIcon =====

class SuffixIconBoxTextField extends StatelessWidget {
  const SuffixIconBoxTextField();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          suffixIcon: Icon(Icons.call_end),
          hintText: 'Suffix icon with Outline TextField',
        ),
      ),
    );
  }
}

// ===== colorPrefixIcon in BoxTextField =====

class ColorIconTextField extends StatelessWidget {
  const ColorIconTextField();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          prefixIcon: Icon(
            Icons.person,
            color: theamColor,
          ),
          hintText: 'color icon',
        ),
      ),
    );
  }
}

// ===== colorSuffixIcon in BoxTextField =====

class ColorSuffixIconTextField extends StatelessWidget {
  const ColorSuffixIconTextField();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          suffixIcon: Icon(
            Icons.add_a_photo,
            color: theamColor,
          ),
          hintText: 'color SuffixIcon',
        ),
      ),
    );
  }
}
