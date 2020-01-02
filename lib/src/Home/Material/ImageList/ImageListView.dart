import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/Home/Material/ImageList/AssetsImage.dart';

import 'package:flutter_ui_compornent/src/Home/Material/ImageList/NetworkImage.dart';
import 'package:flutter_ui_compornent/src/Home/Material/ImageList/StringToImage.dart';
import 'package:flutter_ui_compornent/src/model/category.dart';
import 'package:flutter_ui_compornent/src/model/matrial_model.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class ImageViewList extends StatefulWidget {
  const ImageViewList(this.widgetM);
  final WidgetModel widgetM;
  @override
  _ImageViewListState createState() => _ImageViewListState();
}

class _ImageViewListState extends State<ImageViewList> {
  final List<dynamic> list = [AssetsImage(), NetworkImages(), StringImages()];
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
