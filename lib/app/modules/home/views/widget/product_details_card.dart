import 'package:demo/app/modules/home/views/widget/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsCard extends StatelessWidget {
  const ProductDetailsCard({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: Get.width,
        padding: const EdgeInsets.all(8.0),
        child: SmallText(
          text: text,
          fontSize: 22,
        ),
      ),
    );
  }
}
