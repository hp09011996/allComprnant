import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/model/category.dart';
import 'package:flutter_ui_compornent/src/model/matrial_model.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class ButtomSheetList extends StatefulWidget {
  const ButtomSheetList(this.widgetM);
  final WidgetModel widgetM;
  @override
  _ButtomSheetListState createState() => _ButtomSheetListState();
}

class _ButtomSheetListState extends State<ButtomSheetList> {
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
            settingModalBottomSheet(context);
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

  dynamic settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: Wrap(
                children: <Widget>[
                  ListTile(
                      leading: Icon(Icons.music_note),
                      title: const Text('Music'),
                      onTap: () => {}),
                  ListTile(
                    leading: Icon(Icons.videocam),
                    title: const Text('Video'),
                    onTap: () => {},
                  ),
                ],
              ),
            ),
          );
        });
  }
}
