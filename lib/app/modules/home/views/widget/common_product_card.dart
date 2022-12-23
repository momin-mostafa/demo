import 'package:demo/app/data/model/products_model.dart';
import 'package:demo/app/modules/home/views/screens/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonProductCard extends StatelessWidget {
  const CommonProductCard({
    Key? key,
    required this.children,
    required this.product,
  }) : super(key: key);
  final List<Widget> children;
  final Products product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(ProductDetailsPage(products: product)),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: children,
          ),
        ),
      ),
    );
  }
}
