import 'package:blume_shopping_app/routes/routes.dart';
import 'package:blume_shopping_app/utils/colors.dart';
import 'package:blume_shopping_app/utils/dimensions.dart';
import 'package:blume_shopping_app/widgets/app_text_widget.dart';
import 'package:blume_shopping_app/widgets/elevated_btn_widget.dart';
import 'package:blume_shopping_app/widgets/outlined_btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
                    image: AssetImage(
                        "assets/images/welcome_two.jpg"
                    )
                  )
                ),
              )
          ),
          Positioned(
            child: Container(
              color: Colors.black.withOpacity(0.4),
            ),
          ),
          Positioned(
            top: Dimensions.height50,
            right: Dimensions.width10,
            child: InkWell(
              onTap: () {
                Get.toNamed(RouteClass.getLoginRoute());
              },
              child: Row(
                children: [
                  AppTextWidget(text: "SIGN IN", textColor: AppColors.white),
                  SizedBox(width: Dimensions.width5),
                  const Icon(Icons.arrow_forward_ios, color: AppColors.white)
                ],
              ),
            ),
          ),
          Positioned(
            bottom: Dimensions.height20,
            child: Padding(
              padding: EdgeInsets.all(Dimensions.width20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppTextWidget(
                      text: "Ideal store for",
                      textColor: AppColors.white,
                    fontWeight: FontWeight.w900,
                    size: Dimensions.font30,
                  ),
                  SizedBox(height: Dimensions.height10),
                  AppTextWidget(
                    text: "your shopping",
                    textColor: AppColors.white,
                    fontWeight: FontWeight.w900,
                    size: Dimensions.font30,
                  ),
                  SizedBox(height: Dimensions.height40),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - (Dimensions.width20 * 2),
                    child: ElevatedBtnWidget(
                      text: "SIGN UP WITH EMAIL",
                      textColor: AppColors.mainColor,
                      navigateTo: RouteClass.getSignUpRoute(),
                      rippleColor: AppColors.white,
                    ),
                  ),
                  SizedBox(height: Dimensions.height20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - (Dimensions.width20 * 2),
                    child: OutlinedBtnWidget(
                      rippleColor: AppColors.orange,
                      text: "SIGN IN",
                      textBorderColor: AppColors.white,
                      navigateTo: RouteClass.getLoginRoute(),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
