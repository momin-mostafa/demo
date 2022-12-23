import 'package:demo/app/modules/home/views/widget/product_grid_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Products'),
        centerTitle: true,
      ),
      body: Obx(
        () => GridView.builder(
          itemCount: controller.productsList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) => CustomGridTile(
            product: controller.productsList[index]!,
          ),
        ),
      ),
    );
  }
}
