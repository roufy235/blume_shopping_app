import 'package:blume_shopping_app/utils/dimensions.dart';
import 'package:blume_shopping_app/widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OutlinedBtnWidget extends StatelessWidget {
  final String text, navigateTo;
  final Color textBorderColor, rippleColor;
  double outlineWidth, borderRadius, padding;
  OutlinedBtnWidget({
    Key? key,
    required this.text,
    required this.textBorderColor,
    required this.navigateTo,
    required this.rippleColor,
    this.outlineWidth = 2.0,
    this.borderRadius = 0,
    this.padding = 0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.all(
            padding == 0 ? Dimensions.width15 : padding
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                borderRadius == 0 ? Dimensions.radius30 : borderRadius
              )
          ),
          primary: rippleColor,
          side: BorderSide(
            width: outlineWidth,
            color: textBorderColor,
          ),
        ),
        onPressed: () {
          Get.toNamed(navigateTo);
        },
        child: AppTextWidget(
          textAlign: TextAlign.center,
          fontWeight: FontWeight.w600,
          text: text,
          textColor: textBorderColor,
        )
    );
  }
}
