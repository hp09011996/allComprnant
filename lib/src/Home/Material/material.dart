import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/Home/Material/AlertBox/AlertBoxList.dart';
import 'package:flutter_ui_compornent/src/Home/Material/Appbar/appbarlist.dart';
import 'package:flutter_ui_compornent/src/Home/Material/ButtomSheet/ButtomSheet.dart';
import 'package:flutter_ui_compornent/src/Home/Material/Button/ButtonList.dart';
import 'package:flutter_ui_compornent/src/Home/Material/Card/Card.dart';
import 'package:flutter_ui_compornent/src/Home/Material/CheakBox/CheckBoxList.dart';
import 'package:flutter_ui_compornent/src/Home/Material/GridView/GridViewList.dart';
import 'package:flutter_ui_compornent/src/Home/Material/ImageList/ImageListView.dart';
import 'package:flutter_ui_compornent/src/Home/Material/ListView/ListItemList.dart';
import 'package:flutter_ui_compornent/src/Home/Material/RadioButton/RadioButton.dart';
import 'package:flutter_ui_compornent/src/Home/Material/Slider/SliderListView.dart';
import 'package:flutter_ui_compornent/src/Home/Material/SnackBar/SnackBar.dart';
import 'package:flutter_ui_compornent/src/Home/Material/Switch/SwitchView.dart';
import 'package:flutter_ui_compornent/src/helper/json_read_helper.dart';
import 'package:flutter_ui_compornent/src/model/matrial_model.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class MaterialPage extends StatefulWidget {
  const MaterialPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MaterialPageState createState() => _MaterialPageState();
}

class _MaterialPageState extends State<MaterialPage> {
  List<WidgetModel> widgetData = [];
  @override
  void initState() {
    getListCategory();
    super.initState();
  }

  dynamic getListCategory() async {
    widgetData = await JsonReadHelper().loadMaterialJson(context);
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
        itemCount: widgetData.length,
        itemBuilder: (context, index) {
          return listItem(widgetData[index], index);
        },
      ),
    );
  }

  // List Compornent List item

  dynamic listItem(WidgetModel category, int index) {
    return Card(
      elevation: 8.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: whiteColor),
        child: ListTile(
          onTap: () {
            final List<dynamic> list = [
              AppBarList(category),
              AlertBox(category),
              ButtonList(category),
              Cards(),
              CheckBoxList(category),
              GridViewList(category),
              ListItemList(category),
              ImageViewList(category),
              SliderViewList(category),
              SwitchViewList(category),
              ButtomSheetList(category),
              SnackBarViewList(category),
              RadioButtonList(category)
            ];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => list[index],
              ),
            );
          },
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          trailing: Container(
            decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(width: 1.0, color: Colors.white24))),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: theamColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  )),
              child: Center(
                child: Text(
                  category.count,
                  style:
                      TextStyle(color: whiteColor, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          title: Text(
            category.name,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
