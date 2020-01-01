import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class SimpleList extends StatefulWidget {
  @override
  _SimpleList createState() => _SimpleList();
}

class _SimpleList extends State<SimpleList> {
  List<String> inputs = [];

  @override
  void initState() {
    setState(() {
      // Items For List
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
        title: const Text('List'),
      ),
      body: ListView.builder(
          itemCount: inputs.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Column(
                children: <Widget>[
                  // Item Container
                  Row(children: <Widget>[
                    Expanded(
                      child: Text(inputs[index]),
                    ),
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
            );
          }),
    );
  }
}
