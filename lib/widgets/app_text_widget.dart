import 'package:blume_shopping_app/utils/dimensions.dart';
import 'package:flutter/material.dart';

class AppTextWidget extends StatelessWidget {
  final String text;
  final Color textColor;
  FontWeight fontWeight;
  TextAlign textAlign;
  TextOverflow textOverflow;
  double size;
   AppTextWidget({
    Key? key,
    required this.text, required this.textColor,
    this.fontWeight = FontWeight.w400,
    this.size = 0,
    this.textAlign = TextAlign.start,
    this.textOverflow = TextOverflow.visible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      overflow: textOverflow,
      text,
      softWrap: true,
      style: TextStyle(
          fontFamily: 'SofiaPro',
          color: textColor,
          fontWeight: fontWeight,
          fontSize: size == 0 ? Dimensions.font14 : size
      ),
    );
  }
}
