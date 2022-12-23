import 'package:demo/app/data/model/products_model.dart';
import 'package:demo/app/modules/home/views/widget/small_text.dart';
import 'package:demo/app/modules/home/views/widget/title_text.dart';
import 'package:demo/app/util/app_const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/product_screen.dart';

class CustomGridTile extends StatelessWidget {
  const CustomGridTile({super.key, required this.product});
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
            children: [
              image(),
              TitleText(
                text: product.title.toString(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SmallText(text: '\$${product.price}'),
                  SmallText(
                    text: 'Rating : ${product.rating?.rate}',
                    isRating: true,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget image() {
    return Image.network(
      product.image ?? AppConst.IMAGEPLACEHOLDER,
      height: Get.height * 0.1,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      },
    );
  }
}
