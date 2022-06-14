import 'package:blume_shopping_app/utils/colors.dart';
import 'package:blume_shopping_app/utils/dimensions.dart';
import 'package:blume_shopping_app/widgets/app_text_widget.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  final String text, img;
  const CategoriesWidget({
    Key? key,
    required this.text,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            margin: EdgeInsets.only(
              left: Dimensions.width20,
            ),
            width: Dimensions.width170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(img)
                )
            ),
          ),
        ),
        Positioned(
          child: Container(
            width: Dimensions.width170,
            margin: EdgeInsets.only(
              left: Dimensions.width20,
              right: Dimensions.width10,
            ),
            decoration: BoxDecoration(
              color: AppColors.mainColorLighter.withOpacity(0.5),
              borderRadius: BorderRadius.circular(Dimensions.radius20),
            ),
          ),
        ),
        Positioned(
          bottom: Dimensions.height30,
          left: Dimensions.width40,
          child: AppTextWidget(
            text: text,
            textOverflow: TextOverflow.ellipsis,
            textColor: AppColors.white,
            fontWeight: FontWeight.w600,
            size: Dimensions.font20,
          ),
        )
      ],
    );
  }
}
