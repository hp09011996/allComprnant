import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/model/category.dart';
import 'package:flutter_ui_compornent/src/model/matrial_model.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class SnackBarViewList extends StatefulWidget {
  const SnackBarViewList(this.widgetM);
  final WidgetModel widgetM;
  @override
  _SnackBarViewListState createState() => _SnackBarViewListState();
}

class _SnackBarViewListState extends State<SnackBarViewList> {
  final List<dynamic> list = [];
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
            return listItem(widget.widgetM.item[index], index, context);
          },
        ),
      ),
    );
  }

  dynamic listItem(Category category, int index, BuildContext contextt) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: whiteColor),
        child: ListTile(
          onTap: () {
            if (index == 0) {
              const snackBar = SnackBar(content: Text('Yay! A SnackBar!'));
              Scaffold.of(contextt).showSnackBar(snackBar);
            }
            if (index == 1) {
              final snackBar = SnackBar(
                content: const Text('Yay! A SnackBar!'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );
              Scaffold.of(contextt).showSnackBar(snackBar);
            }
            if (index == 2) {
              final snackBar = SnackBar(
                content: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Icon(Icons.add_alert),
                      Text('Yay! A SnackBar!'),
                    ],
                  ),
                ),
              );
              Scaffold.of(contextt).showSnackBar(snackBar);
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
}
