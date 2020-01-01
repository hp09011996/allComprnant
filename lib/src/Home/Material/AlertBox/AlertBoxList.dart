import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/model/category.dart';
import 'package:flutter_ui_compornent/src/model/matrial_model.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class AlertBox extends StatefulWidget {
  const AlertBox(this.widgetM);
  final WidgetModel widgetM;
  @override
  _AlertBoxState createState() => _AlertBoxState();
}

class _AlertBoxState extends State<AlertBox> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.widgetM.name),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 6, right: 6, bottom: 10, top: 10),
        child: ListView.builder(
          itemCount: widget.widgetM.item.length,
          itemBuilder: (context, index) {
            return listItem(widget.widgetM.item[index], index);
          },
        ),
      ),
    );
  }

  dynamic listItem(Category category, int index) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: whiteColor),
        child: ListTile(
          onTap: () {
            if (index == 0) {
              simpleAlertBox('Lorem ipsum dolor sit amet, '
                  'consectetur adipiscing elit. Aliquam eget.');
            } else if (index == 1) {
              okCancelAlert('Lorem ipsum dolor sit amet,'
                  ' consectetur adipiscing elit. Aliquam eget.');
            } else if (index == 2) {
              textFieldAlertBox();
            } else if (index == 3) {
              customAlertBox('Lorem ipsum dolor sit amet,'
                  ' consectetur adipiscing elit. Aliquam eget.');
            }
          },
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          title: Text(
            category.name,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  // === Simple AlertBox with ok button ===

  dynamic simpleAlertBox(String value) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text(
                'Alert!',
              ),
              content: Text(value),
              actions: <Widget>[
                FlatButton(
                  child: Text(
                    'Ok',
                    style: TextStyle(color: theamColor),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ));
  }

  // === AlertBox with ok & cancel button ===

  dynamic okCancelAlert(String value) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Alert!'),
              content: Text(value),
              actions: <Widget>[
                Row(
                  children: <Widget>[
                    FlatButton(
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: theamColor),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                    FlatButton(
                      child: Text(
                        'Ok',
                        style: TextStyle(color: theamColor),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                )
              ],
            ));
  }

// === AlertBox with TextField ===

  void textFieldAlertBox() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Alert!'),
              content: Row(
                children: const <Widget>[
                  Expanded(
                    flex: 1,
                    child: TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                          labelText: 'Full Name', hintText: 'eg. John Smith'),
                    ),
                  )
                ],
              ),
              actions: <Widget>[
                FlatButton(
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: theamColor),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                FlatButton(
                    child: Text(
                      'Done',
                      style: TextStyle(color: theamColor),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            ));
  }

// === Custom AlertBox ===

  void customAlertBox(String value) {
    showDialog(
        context: context,
        builder: (context) => Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
                height: 350,
                width: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  'images/backimg.jpg',
                                ),
                                fit: BoxFit.cover,
                              )),
                        ),
                        // Profile Image
                        Container(
                          padding: const EdgeInsets.only(top: 50),
                          alignment: Alignment.center,
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 3),
                              image: const DecorationImage(
                                image: AssetImage('images/natasha.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                            top: 30, left: 20, right: 20, bottom: 30),
                        child: Text(
                          value,
                          textAlign: TextAlign.center,
                        )),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: theamColor, width: 2.0),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Cancel',
                        ),
                      ),
                    )
                  ],
                ))));
  }
}
