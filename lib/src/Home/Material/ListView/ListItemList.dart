import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/Home/Material/CheakBox/ListCheckBox.dart';
import 'package:flutter_ui_compornent/src/Home/Material/ListView/AvtarList.dart';
import 'package:flutter_ui_compornent/src/Home/Material/ListView/Drang&DropList.dart';
import 'package:flutter_ui_compornent/src/Home/Material/ListView/ExpandableList.dart';
import 'package:flutter_ui_compornent/src/Home/Material/ListView/IconList.dart';
import 'package:flutter_ui_compornent/src/Home/Material/ListView/MultiLineList.dart';
import 'package:flutter_ui_compornent/src/Home/Material/ListView/SelectedListItem.dart';
import 'package:flutter_ui_compornent/src/Home/Material/ListView/SimpleList.dart';
import 'package:flutter_ui_compornent/src/Home/Material/ListView/SwipeList.dart';
import 'package:flutter_ui_compornent/src/model/category.dart';
import 'package:flutter_ui_compornent/src/model/matrial_model.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class ListItemList extends StatefulWidget {
  const ListItemList(this.widgetM);
  final WidgetModel widgetM;
  @override
  _ListItemListState createState() => _ListItemListState();
}

class _ListItemListState extends State<ListItemList> {
  final List<dynamic> list = [
    SimpleList(),
    SelectedListItem(),
    MultiLineList(),
    AvatarList(),
    IconList(),
    SwipeList(),
    const DragDropList(),
    ExpansionTileSample(),
    ListCheckBox()
  ];
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => list[index]));
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
