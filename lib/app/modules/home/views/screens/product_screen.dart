import 'package:demo/app/data/model/products_model.dart';
import 'package:demo/app/modules/home/views/widget/title_text.dart';
import 'package:demo/app/util/app_const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/product_details_card.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key, required this.products});
  final Products products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Product Detail',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 5.0,
          left: 8,
          right: 8,
          bottom: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.4,
                width: Get.width,
                child:
                    Image.network(products.image ?? AppConst.IMAGEPLACEHOLDER),
              ),
              TitleText(
                text: products.title ?? '',
                fontSize: 20,
                overflow: null,
              ),
              ProductDetailsCard(text: "Price : ${products.price}"),
              ProductDetailsCard(text: "Description : ${products.description}"),
              ProductDetailsCard(text: "Category : ${products.category}"),
              ProductDetailsCard(
                text: "Rating Count : ${products.rating!.count}",
              ),
              ProductDetailsCard(text: "Rating : ${products.rating!.rate} / 5"),
            ],
          ),
        ),
      ),
    );
  }
}
