import 'package:blume_shopping_app/utils/colors.dart';
import 'package:blume_shopping_app/utils/dimensions.dart';
import 'package:blume_shopping_app/widgets/app_text_widget.dart';
import 'package:blume_shopping_app/widgets/elevated_btn_widget.dart';
import 'package:blume_shopping_app/widgets/go_back.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: Dimensions.height20,
            left: Dimensions.width20,
            right: Dimensions.width20,
          ),
          child: Column(
            children: [
              GoBack(textAndIconColor: AppColors.mainColor),
              SizedBox(height: Dimensions.height40),
              AppTextWidget(
                  text: "Forgot Password?",
                  textColor: AppColors.mainColor,
                fontWeight: FontWeight.w900,
                size: Dimensions.font30
              ),
              SizedBox(height: Dimensions.height20),
              AppTextWidget(
                  text: "Please enter your email address and we will send your password by email immediately.",
                  textColor: AppColors.mainColor
              ),
              SizedBox(height: Dimensions.height20),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Email',
                  fillColor: AppColors.mainColor,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.solid, color: AppColors.mainColor),
                  ),
                ),
                style: const TextStyle(
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SofiaPro'
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(height: Dimensions.height40),
              SizedBox(
                width: MediaQuery.of(context).size.width - (Dimensions.width20 * 2),
                child: ElevatedBtnWidget(
                  text: "SEND",
                  textColor: AppColors.white,
                  rippleColor: AppColors.mainColor,
                  navigateTo: '',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
