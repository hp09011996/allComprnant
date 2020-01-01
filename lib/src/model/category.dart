import 'package:flutter_ui_compornent/src/utility/constant.dart';

class Category {
  Category({this.name, this.type, this.icon});

  factory Category.fromJson(Map<String, dynamic> json) =>
      Category(name: json[nameKey], type: json[typeKey], icon: json[iconKey]);

  String name, type, icon;
}
