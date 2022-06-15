import 'package:blume_shopping_app/state/home_tab_controller.dart';
import 'package:blume_shopping_app/utils/colors.dart';
import 'package:blume_shopping_app/utils/dimensions.dart';
import 'package:blume_shopping_app/widgets/app_icon.dart';
import 'package:blume_shopping_app/widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesTab extends StatelessWidget {
  const CategoriesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final HomeTabController controller = Get.put(HomeTabController());


    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20,
          ),
          color: AppColors.mainColor,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  controller.changeTabIndex(0);
                },
                child: const AppIcon(
                    icon: Icons.arrow_back_ios,
                    bgColor: AppColors.mainColorLighter,
                    iconColor: AppColors.white
                ),
              ),
              AppTextWidget(
                text: "Categories",
                textColor: AppColors.white,
                size: Dimensions.font20,
                fontWeight: FontWeight.w800,
              ),
              InkWell(
                onTap: () {

                },
                child: const AppIcon(
                    icon: Icons.shopping_bag,
                    bgColor: AppColors.orange,
                    iconColor: AppColors.white
                ),
              )
            ],
          ),
        ),

      ],
    );
  }
}
