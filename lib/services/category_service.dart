import 'dart:convert';

import 'package:meals_app_new/model/catregory_model.dart';
import 'package:meals_app_new/utils/api.dart';

class CategoryService {
  static Future<Categories> fetchCategory() async {
    var jsonData = await Api.dio.post(
      'categories.php',
      data:{
        ""
      },

    ); // json
    var mapData = jsonDecode(jsonData.toString()); // map : spelling
    // map to object
    var categories = Categories.fromJson(mapData);
    return categories;
  }
}
