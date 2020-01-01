import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class MultiLineList extends StatefulWidget {
  @override
  _MultiLineList createState() => _MultiLineList();
}

class _MultiLineList extends State<MultiLineList> {
  AnimationController listViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MultiLine Item'),
        backgroundColor: theamColor,
      ),
      // ListItem Contain More than one Item
      body: ListView.builder(
          //15 Item in List
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        child: const Text(
                            'Lorem ipsum dolor sit amet, consectetur '),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing '
                          'elit. In sed varius quam, in gravida diam.'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.share,
                                color: Colors.blueAccent,
                              ),
                              onPressed: () {}),
                          Container(
                            width: 10.0,
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.redAccent,
                              ),
                              onPressed: () {}),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
