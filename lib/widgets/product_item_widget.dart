import 'package:blume_shopping_app/utils/colors.dart';
import 'package:blume_shopping_app/utils/dimensions.dart';
import 'package:blume_shopping_app/widgets/app_text_widget.dart';
import 'package:flutter/material.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimensions.width170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: double.maxFinite,
              height: Dimensions.height210,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/cates/main.jpg')
                  )
              )
          ),
          SizedBox(height: Dimensions.height5),
          AppTextWidget(
            text: "V-neck T-shirts",
            textColor: AppColors.mainColor,
            fontWeight: FontWeight.w800,
            textOverflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: Dimensions.height2),
          AppTextWidget(
              text: "\$30",
              textColor: AppColors.mainColorLighter
          ),
        ],
      ),
    );
  }
}
