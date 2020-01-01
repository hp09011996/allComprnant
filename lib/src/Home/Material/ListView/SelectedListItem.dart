import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class SelectedListItem extends StatefulWidget {
  @override
  _SelectedListItem createState() => _SelectedListItem();
}

class _SelectedListItem extends State<SelectedListItem> {
  List<String> inputs = [];
  Color txtColor;
  int previousIndex;
  List<bool> dataSelected = [];

//Alert Box
  void _simpleAlertBox(String value, index) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Alert!'),
              content: Text('Select $value'),
              actions: <Widget>[
                FlatButton(
                  child: Text('Ok', style: TextStyle(color: theamColor)),
                  onPressed: () {
                    dataSelected[index] = false;
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ));
  }

// Calling Function When Item Selected
  dynamic _selectItem(index) {
    setState(() {
      dataSelected[index] = true;
      previousIndex = index;
    });
    _simpleAlertBox(inputs[index], index);
  }

  @override
  void initState() {
    setState(() {
      // Value for item in list
      dataSelected.add(false);
      dataSelected.add(false);
      dataSelected.add(false);
      dataSelected.add(false);
      dataSelected.add(false);
      dataSelected.add(false);
      dataSelected.add(false);
      dataSelected.add(false);

      // Item For List
      inputs.add('Movie');
      inputs.add('Food');
      inputs.add('Song');
      inputs.add('Dance');
      inputs.add('Actor');
      inputs.add('Artist');
      inputs.add('Travelling');
      inputs.add('Study');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theamColor,
        title: const Text('Selected List'),
      ),
      body: ListView.builder(
          itemCount: inputs.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                // Items of List
                child: GestureDetector(
                  onTap: () {
                    _selectItem(index);
                  },
                  child: Column(
                    children: <Widget>[
                      Row(children: <Widget>[
                        Expanded(
                          child: Text(inputs[index],
                              style: TextStyle(
                                color: dataSelected[index] == true
                                    ? theamColor
                                    : Colors.black,
                              )),
                        ),
                        // Right Arrow icon
                        IconButton(
                          icon: Icon(Icons.arrow_forward),
                          color: Colors.grey,
                          onPressed: () {},
                        ),
                      ]),
                      Divider(
                        color: Colors.grey[600],
                      ),
                    ],
                  ),
                ));
          }),
    );
  }
}
