import 'package:blume_shopping_app/utils/dimensions.dart';
import 'package:blume_shopping_app/widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ElevatedBtnWidget extends StatelessWidget {
  final String text, navigateTo;
  final Color textColor, rippleColor;
  double outlineWidth, borderRadius, padding;
  bool removePreviousScreen;
  ElevatedBtnWidget({
    Key? key,
    required this.text,
    required this.textColor,
    required this.navigateTo,
    required this.rippleColor,
    this.outlineWidth = 2.0,
    this.borderRadius = 0,
    this.padding = 0,
    this.removePreviousScreen = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
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
              color: rippleColor
          ),
        ),
        onPressed: () {
          if(removePreviousScreen) {
            // this will disable back button
            navigateTo.isNotEmpty ? Get.offNamed(navigateTo) : null;
          } else {
            navigateTo.isNotEmpty ? Get.toNamed(navigateTo) : null;
          }

        },
        child: AppTextWidget(
          textAlign: TextAlign.center,
          fontWeight: FontWeight.w600,
          text: text,
          textColor: textColor,
        )
    );
  }
}
