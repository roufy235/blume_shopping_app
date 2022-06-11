import 'package:blume_shopping_app/utils/colors.dart';
import 'package:blume_shopping_app/utils/dimensions.dart';
import 'package:blume_shopping_app/widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoBack extends StatelessWidget {
  Color textAndIconColor;
  GoBack({
    Key? key,
    this.textAndIconColor = Colors.white
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: Row(
        children: [
          Icon(Icons.arrow_back_ios, color: textAndIconColor),
          SizedBox(width: Dimensions.width2),
          AppTextWidget(
              text: "BACK",
              textColor: textAndIconColor,
              fontWeight: FontWeight.w600
          ),
        ],
      ),
    );
  }
}
