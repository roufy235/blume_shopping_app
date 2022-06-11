import 'package:blume_shopping_app/routes/routes.dart';
import 'package:blume_shopping_app/utils/colors.dart';
import 'package:blume_shopping_app/utils/dimensions.dart';
import 'package:blume_shopping_app/widgets/app_text_widget.dart';
import 'package:blume_shopping_app/widgets/elevated_btn_widget.dart';
import 'package:blume_shopping_app/widgets/go_back.dart';
import 'package:blume_shopping_app/widgets/outlined_btn_widget.dart';
import 'package:flutter/material.dart';

class SelectPurchaseGender extends StatelessWidget {
  const SelectPurchaseGender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/fas.jpg")
                )
              ),
            ),
          ),
          Positioned(
            child: Container(
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          Positioned(
            top: Dimensions.height50,
            left: Dimensions.width20,
            child: GoBack(
              textAndIconColor: AppColors.white,
            ),
          ),
          Positioned(
            left: Dimensions.width30,
            right: Dimensions.width30,
            bottom: Dimensions.height50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextWidget(
                  text: "Make your",
                  textColor: AppColors.white,
                  fontWeight: FontWeight.w900,
                  size: Dimensions.font30,
                ),
                SizedBox(height: Dimensions.height10),
                AppTextWidget(
                  text: "purchase as",
                  textColor: AppColors.white,
                  fontWeight: FontWeight.w900,
                  size: Dimensions.font30,
                ),
                SizedBox(height: Dimensions.height50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        width: Dimensions.width150,
                      child: ElevatedBtnWidget(
                        textColor: AppColors.mainColor,
                        text: "WOMEN",
                        rippleColor: AppColors.white,
                        navigateTo: RouteClass.getHomeRoute(),
                      ),
                    ),
                    SizedBox(
                        width: Dimensions.width150,
                      child: OutlinedBtnWidget(
                        textBorderColor: AppColors.white,
                        text: "MEN",
                        rippleColor: AppColors.white,
                        navigateTo: RouteClass.getHomeRoute(),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
