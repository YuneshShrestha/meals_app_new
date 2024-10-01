import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meals_app_new/controller/category_controller.dart';
import 'package:meals_app_new/model/catregory_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Register
    Get.put(CategoryController());
    // Inject : Ram, Class : Science, Maths
    var categoryController = Get.find<CategoryController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meals App"),
      ),
      body: Obx(() {
        return categoryController.loading.value == true
            ? const CircularProgressIndicator()
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: categoryController.listOfCategories.length,
                itemBuilder: (contect, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/second_page', arguments: {
                        'title': (categoryController.listOfCategories[index]
                                as Category)
                            .strCategory
                            .toString(),
                        'image': ((categoryController.listOfCategories[index]
                                    as Category)
                                .strCategoryThumb)
                            .toString(),
                      });
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          child: Image.network(((categoryController
                                      .listOfCategories[index] as Category)
                                  .strCategoryThumb)
                              .toString()),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Text((categoryController
                                  .listOfCategories[index] as Category)
                              .strCategory
                              .toString()),
                        )
                      ],
                    ),
                  );
                });
      }),
    );
  }
}
