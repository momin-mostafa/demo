import 'package:demo/app/util/app_color.dart';
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  const SmallText({
    super.key,
    required this.text,
    this.isRating = false,
    this.fontSize = 14,
  });
  final String text;
  final bool isRating;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(color: isRating ? AppColor.ratingTextColor : null),
    );
  }
}
