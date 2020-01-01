import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/Home/Material/material.dart';
import 'package:flutter_ui_compornent/src/helper/json_read_helper.dart';
import 'package:flutter_ui_compornent/src/model/category.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Category> category = [];
  @override
  void initState() {
    getListCategory();
    super.initState();
  }

  dynamic getListCategory() async {
    category = await JsonReadHelper().loadCategoryJson(context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theamColor,
        title: Text(
          widget.title,
          style: TextStyle(color: whiteColor, fontWeight: FontWeight.w600),
        ),
      ),
      body: listCompornent(),
    );
  }

  // List Compornent List
  dynamic listCompornent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
      child: ListView.builder(
        itemCount: category.length,
        itemBuilder: (context, index) {
          return listItem(category[index]);
        },
      ),
    );
  }

  // List Compornent List item

  dynamic listItem(Category category) {
    return Card(
      elevation: 8.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: whiteColor),
        child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MaterialPage(
                    title: category.name,
                  ),
                ),
              );
            },
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: const EdgeInsets.only(right: 12.0),
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(width: 1.0, color: Colors.white24))),
              child: Icon(Icons.developer_mode, color: textColor),
            ),
            title: Text(
              category.name,
              style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
            ),
            trailing:
                Icon(Icons.keyboard_arrow_right, color: textColor, size: 30.0)),
      ),
    );
  }
}
