import 'package:get/get.dart';
import 'package:meals_app_new/services/category_service.dart';

class CategoryController extends GetxController {
  // Data: change
  var listOfCategories = [].obs;
  var loading = false.obs;
  // operations
  getCategory() async {
    loading(true);
    var data = await CategoryService.fetchCategory();
    listOfCategories.value = data.categories;
    loading(false);
  }

  @override
  void onInit() {
    getCategory();
    super.onInit();
  }
}
