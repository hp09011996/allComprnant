import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_compornent/src/model/category.dart';
import 'package:flutter_ui_compornent/src/model/matrial_model.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class JsonReadHelper {
  Future<List<Category>> loadCategoryJson(BuildContext context) async {
    final List<Category> countries = [];
    final value =
        await DefaultAssetBundle.of(context).loadString(categoryJsonPath);
    final countriesJson = json.decode(value);
    for (var country in countriesJson) {
      countries.add(Category.fromJson(country));
    }
    return countries;
  }

  Future<List<WidgetModel>> loadMaterialJson(BuildContext context) async {
    final value =
        await DefaultAssetBundle.of(context).loadString(matrialJsonPath);
    final countriesJson = json.decode(value);
    return MatrialModel.fromJson(countriesJson).widget;
  }
}
