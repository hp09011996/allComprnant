import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class ListCheckBox extends StatefulWidget {
  @override
  _ListCheckBox createState() => _ListCheckBox();
}

class _ListCheckBox extends State<ListCheckBox> {
  List<String> inputs = [];
  List<bool> check = [];

  @override
  void initState() {
    setState(() {
      //value of CheckBoxes
      check.add(true);
      check.add(false);
      check.add(true);
      check.add(false);
      check.add(false);
      check.add(false);
      check.add(false);
      check.add(true);

      // Items of CheckBoxes List
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

// calling function when item Select or Deselect
  void itemChange(bool val, int index, BuildContext context) {
    setState(() {
      check[index] = val;
    });
    if (check[index] == true) {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          backgroundColor: theamColor,
          content: Text('Select ${inputs[index]}'),
          duration: const Duration(seconds: 1),
        ),
      );
    } else {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          backgroundColor: theamColor,
          content: Text('DeSelect ${inputs[index]}'),
          duration: const Duration(seconds: 1),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theamColor,
        title: const Text('CheckBox List'),
      ),
      body: ListView.builder(
          itemCount: inputs.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    CheckboxListTile(
                        value: check[index],
                        activeColor: theamColor,
                        title: Text('${inputs[index]}'),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool val) {
                          itemChange(val, index, context);
                        })
                  ],
                ),
              ),
            );
          }),
    );
  }
}
