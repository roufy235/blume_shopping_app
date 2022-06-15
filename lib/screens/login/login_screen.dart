import 'package:blume_shopping_app/routes/routes.dart';
import 'package:blume_shopping_app/screens/login/controller/login_controller.dart';
import 'package:blume_shopping_app/utils/colors.dart';
import 'package:blume_shopping_app/utils/dimensions.dart';
import 'package:blume_shopping_app/widgets/app_text_widget.dart';
import 'package:blume_shopping_app/widgets/elevated_btn_widget.dart';
import 'package:blume_shopping_app/widgets/func_elevated_btn_widget.dart';
import 'package:blume_shopping_app/widgets/go_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  var loginController = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>();

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
                    text: "Login into",
                    textColor: AppColors.white,
                    fontWeight: FontWeight.w800,
                    size: Dimensions.font30,
                  ),
                ),
                SizedBox(height: Dimensions.height10),
                Padding(
                  padding: EdgeInsets.only(left: Dimensions.width30),
                  child: AppTextWidget(
                    text: "your account",
                    textColor: AppColors.white,
                    fontWeight: FontWeight.w800,
                    size: Dimensions.font30,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: Dimensions.height40,),
          Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.only(left: Dimensions.width30, right: Dimensions.width30),
              child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        controller: loginController.emailTextController,
                      ),
                      SizedBox(height: Dimensions.height40),
                      TextFormField(
                        obscureText: true,
                        controller: loginController.passwordTextController,
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
                      SizedBox(height: Dimensions.height20),
                      InkWell(
                        onTap: () {
                          Get.toNamed(RouteClass.getForgotPasswordRoute());
                        },
                        child: AppTextWidget(
                          textColor: AppColors.mainColor,
                          text: 'Forgot Password',
                        ),
                      ),
                      SizedBox(height: Dimensions.height40),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - (Dimensions.width20 * 2),
                        child: FuncElevatedBtnWidget(
                          text: "SIGN IN",
                          navigateTo: loginController.loginBtnClicked,
                          textColor: AppColors.white,
                          rippleColor: AppColors.mainColor,
                        ),
                      ),
                      SizedBox(height: Dimensions.height20),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - (Dimensions.width20 * 2),
                        child: FuncElevatedBtnWidget(
                          text: "SIGN IN WITH GOOGLE",
                          navigateTo: () => {
                            Get.snackbar(
                                "title",
                                "Work in progress",
                              snackPosition: SnackPosition.BOTTOM
                            )
                          },
                          textColor: AppColors.mainColor,
                          rippleColor: Colors.yellow,
                        ),
                      ),
                    ],
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}
