import 'package:flutter_ui_compornent/src/model/category.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class MatrialModel {
  MatrialModel.fromJson(Map<String, dynamic> json) {
    for (dynamic widgetList in json[widgetKey]) {
      widget.add(WidgetModel.fromJson(widgetList));
    }
  }
  List<WidgetModel> widget = [];
}

class WidgetModel {
  WidgetModel.fromJson(Map<String, dynamic> json) {
    for (Map<String, dynamic> widget in json[itemKey]) {
      item.add(Category.fromJson(widget));
    }
    name = json[nameKey];
    count = json[countKey];
  }
  String name = '';
  String count = '0';
  List<Category> item = [];
}
