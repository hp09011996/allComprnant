import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class SimpleRadioButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SimpleRadioButton();
  }
}

class _SimpleRadioButton extends State<SimpleRadioButton> {
  int value;
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: const Text('Radio Buttons'),
            backgroundColor: theamColor,
          ),
          body: Builder(
            builder: (context) => Container(
              child: Column(children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 30.0),
                ),
                const Text(
                  'City: ',
                ),
                Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  Row(
                    children: <Widget>[
                      Radio<int>(
                          activeColor: theamColor,
                          value: 0,
                          groupValue: _selected,
                          onChanged: (value) {
                            _select(value, context);
                          }),
                      const Text(
                        'Surat',
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio<int>(
                          activeColor: theamColor,
                          value: 1,
                          groupValue: _selected,
                          onChanged: (value) {
                            _select(value, context);
                          }),
                      const Text(
                        'Bombay',
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio<int>(
                          activeColor: theamColor,
                          value: 2,
                          groupValue: _selected,
                          onChanged: (value) {
                            _select(value, context);
                          }),
                      const Text(
                         'Baroda',
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio<int>(
                          activeColor: theamColor,
                          value: 3,
                          groupValue: _selected,
                          onChanged: (int value) {
                            _select(value, context);
                          }),
                      const Text(
                        'Ahemdabad',
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio<int>(
                          activeColor: theamColor,
                          value: 4,
                          groupValue: _selected,
                          onChanged: (value) {
                            _select(value, context);
                          }),
                      const Text(
                        'Bardoli',
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio<int>(
                          activeColor: theamColor,
                          value: 5,
                          groupValue: _selected,
                          onChanged: (value) {
                            _select(value, context);
                          }),
                      const Text(
                         'Anand',
                      ),
                    ],
                  ),
                ])
              ]),
            ),
          ));
    });
  }

// calling when Item Selected
  void _select(int value, BuildContext context) {
    setState(() {
      _selected = value;
    });
    Scaffold.of(context).showSnackBar(
      SnackBar(
        backgroundColor: theamColor,
        content: const Text( 'Selected'),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
