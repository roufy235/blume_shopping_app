import 'package:blume_shopping_app/routes/routes.dart';
import 'package:blume_shopping_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();


  void loginBtnClicked () {
    if(emailTextController.text.isNotEmpty && passwordTextController.text.isNotEmpty) {
      displayLoader();
    } else {
      Get.snackbar(
          "Error",
          "Email and password are not valid",
          snackPosition: SnackPosition.BOTTOM,
          icon: const Icon(Icons.cancel)
      );

      // Get.defaultDialog(
      //   title: "hello",
      //   content: AppTextWidget(text: "text", textColor: AppColors.mainColor),
      //   textConfirm: "Ok",
      //   textCancel: "Cancel",
      //   onConfirm: Get.back
      // );
    }
  }

  Future<void> displayLoader() async {
    showDialog(
        context: Get.overlayContext!,
        builder: (_) => WillPopScope(
          onWillPop: () async => false,
          child: Center(
            child: SpinKitFoldingCube(
              size: 30,
              itemBuilder: (BuildContext context, int index) {
                return const DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                  ),
                );
              },
            ),
          ),
        )
    );

    await Future.delayed(const Duration(seconds: 3));
    Get.back();

    //emailTextController.text = "";
    //passwordTextController.text = "";
    Get.toNamed(RouteClass.getSelectPurchaseGenderRoute());
  }

}
