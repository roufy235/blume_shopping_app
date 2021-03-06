import 'package:blume_shopping_app/utils/colors.dart';
import 'package:blume_shopping_app/utils/dimensions.dart';
import 'package:blume_shopping_app/widgets/app_text_widget.dart';
import 'package:blume_shopping_app/widgets/elevated_btn_widget.dart';
import 'package:blume_shopping_app/widgets/go_back.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Dimensions.height250,
            padding: EdgeInsets.only(
                top: Dimensions.height50,
                right: Dimensions.width20,
                left: Dimensions.width20
            ),
            decoration: const BoxDecoration(
              color: AppColors.mainColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GoBack(textAndIconColor: AppColors.white),
                SizedBox(height: Dimensions.height40),
                Padding(
                  padding: EdgeInsets.only(left: Dimensions.width30),
                  child: AppTextWidget(
                    text: "Create your",
                    textColor: AppColors.white,
                    fontWeight: FontWeight.w800,
                    size: Dimensions.font30,
                  ),
                ),
                SizedBox(height: Dimensions.height10),
                Padding(
                  padding: EdgeInsets.only(left: Dimensions.width30),
                  child: AppTextWidget(
                    text: "account",
                    textColor: AppColors.white,
                    fontWeight: FontWeight.w800,
                    size: Dimensions.font30,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: Dimensions.height40,),
          Padding(
            padding: EdgeInsets.only(left: Dimensions.width30, right: Dimensions.width30),
            child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Name',
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
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Password',
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
                        text: "SIGN UP",
                        textColor: AppColors.white,
                        rippleColor: AppColors.mainColor,
                        navigateTo: '',
                      ),
                    ),
                    SizedBox(height: Dimensions.height20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - (Dimensions.width20 * 2),
                      child: ElevatedBtnWidget(
                        text: "SIGN UP WITH GOOGLE",
                        textColor: AppColors.mainColor,
                        rippleColor: Colors.yellow,
                        navigateTo: '',
                      ),
                    ),
                  ],
                )
            ),
          )
        ],
      ),
    );
  }
}
