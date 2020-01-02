import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class ImageRadioButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImageRadioButton();
  }
}

class _ImageRadioButton extends State<ImageRadioButton> {
  int _selected = 0;

// calling Function when Item
  void onChange(int value) {
    setState(() {
      _selected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Radio Buttons'),
        backgroundColor: theamColor,
      ),
      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              const Text(
                '  Following: ',
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Column(children: <Widget>[
//=======================================================

                Row(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 20),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/natasha.jpg'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    const Expanded(
                        child: Text(
                      'Natasha',
                    )),
                    Radio<int>(
                        activeColor: theamColor,
                        value: 0,
                        groupValue: _selected,
                        onChanged: (int value) {
                          onChange(value);
                        }),
                  ],
                ),

//=======================================================
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
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
                          image: AssetImage('images/img_12.png'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    const Expanded(
                        child: Text(
                      'Diya',
                    )),
                    Radio<int>(
                        activeColor: theamColor,
                        value: 1,
                        groupValue: _selected,
                        onChanged: (int value) {
                          onChange(value);
                        }),
                  ],
                ),

//=======================================================
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
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
                          image: AssetImage('images/prince.png'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    const Expanded(
                        child: Text(
                      'Price',
                    )),
                    Radio<int>(
                        activeColor: theamColor,
                        value: 2,
                        groupValue: _selected,
                        onChanged: (int value) {
                          onChange(value);
                        }),
                  ],
                ),

//=======================================================
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
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
                          image: AssetImage('images/img_13.png'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    const Expanded(
                        child: Text(
                      'Abhi',
                    )),
                    Radio<int>(
                        activeColor: theamColor,
                        value: 3,
                        groupValue: _selected,
                        onChanged: (int value) {
                          onChange(value);
                        }),
                  ],
                ),

//=======================================================
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
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
                          image: AssetImage('images/img_14.png'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    const Expanded(
                        child: Text(
                      'Surali',
                    )),
                    Radio<int>(
                        activeColor: theamColor,
                        value: 4,
                        groupValue: _selected,
                        onChanged: (int value) {
                          onChange(value);
                        }),
                  ],
                ),
//=======================================================
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
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
                          image: AssetImage('images/backimg.jpg'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    const Expanded(
                        child: Text(
                      'Surat',
                    )),
                    Radio<int>(
                        activeColor: theamColor,
                        value: 5,
                        groupValue: _selected,
                        onChanged: (int value) {
                          onChange(value);
                        }),
                  ],
                ),
              ]),
            ]),
      ),
    );
  }
}
