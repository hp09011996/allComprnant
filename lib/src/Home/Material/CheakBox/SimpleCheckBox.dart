import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class SimpleCheckBoxes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SimpleCheckBoxes();
  }
}

class _SimpleCheckBoxes extends State<SimpleCheckBoxes> {
  //value of checkBoxes
  bool studyVal = false;
  bool danceVal = false;
  bool singVal = false;
  bool travellingVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check Boxes'),
        backgroundColor: theamColor,
      ),
      body: Container(
        child: Column(children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 30.0),
          ),
          const Text(
            'Hobby ',
          ),
          Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: studyVal,
                      activeColor: theamColor,
                      onChanged: (bool val) {
                        setState(() {
                          studyVal = val;
                        });
                      },
                    ),
                    const Text('Study'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: danceVal,
                      activeColor: theamColor,
                      onChanged: (bool val) {
                        setState(() {
                          danceVal = val;
                        });
                      },
                    ),
                    const Text('Dance'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: singVal,
                      activeColor: theamColor,
                      onChanged: (bool val) {
                        setState(() {
                          singVal = val;
                        });
                      },
                    ),
                    const Text('Singing'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: travellingVal,
                      activeColor: theamColor,
                      onChanged: (bool val) {
                        setState(() {
                          travellingVal = val;
                        });
                      },
                    ),
                    const Text('Travelling'),
                  ],
                )
              ],
            ),
          ])
        ]),
      ),
    );
  }
}
