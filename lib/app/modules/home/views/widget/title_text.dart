import 'package:demo/app/util/app_color.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.text,
    this.fontSize = 17,
    this.overflow = TextOverflow.ellipsis,
  });
  final String text;
  final double fontSize;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: overflow == null,
      overflow: overflow,
      maxLines: overflow != null ? 2 : null,
      style: TextStyle(
        color: AppColor.titleTextColor,
        fontSize: fontSize,
      ),
    );
  }
}
