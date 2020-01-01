import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class ImageCheckBoxes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImageCheckBoxes();
  }
}

class _ImageCheckBoxes extends State<ImageCheckBoxes> {
  // Checked value for CheckBoxes
  bool danceVal = true;
  bool singVal = false;
  bool readVal = false;
  bool studyVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Check Boxes'),
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
                //==== Dance CheckBox =====
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                Row(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/dance.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    const Expanded(
                        child: Text(
                      'Dance',
                    )),
                    Checkbox(
                      value: danceVal,
                      activeColor: theamColor,
                      onChanged: (val) {
                        setState(() {
                          danceVal = val;
                        });
                      },
                    ),
                  ],
                ),

                //===== Singing CheckBox ===
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                Row(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/sing.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    const Expanded(
                        child: Text(
                      'Singing',
                    )),
                    Checkbox(
                      value: singVal,
                      activeColor: theamColor,
                      onChanged: (val) {
                        setState(() {
                          singVal = val;
                        });
                      },
                    ),
                  ],
                ),

                //======= Reading CheckBox =======

                const Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                Row(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/reading.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    const Expanded(
                        child: Text(
                      'Reading',
                    )),
                    Checkbox(
                      value: readVal,
                      activeColor: theamColor,
                      onChanged: (val) {
                        setState(() {
                          readVal = val;
                        });
                      },
                    ),
                  ],
                ),
                //===== Study CheckBox =====
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                Row(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/study.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    const Expanded(
                        child: Text(
                      'Study',
                    )),
                    Checkbox(
                      value: studyVal,
                      activeColor: theamColor,
                      onChanged: (val) {
                        setState(() {
                          studyVal = val;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ])
        ]),
      ),
    );
  }
}
