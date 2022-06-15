import 'package:blume_shopping_app/models/CategoryDataModel.dart';
import 'package:blume_shopping_app/state/home_tab_controller.dart';
import 'package:blume_shopping_app/utils/colors.dart';
import 'package:blume_shopping_app/utils/dimensions.dart';
import 'package:blume_shopping_app/widgets/app_icon.dart';
import 'package:blume_shopping_app/widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesTab extends StatelessWidget {
  CategoriesTab({Key? key}) : super(key: key);

  List<CategoryDataModel> categories = [
    CategoryDataModel('Cashmere', 'assets/images/cates/cashmere.jpg'),
    CategoryDataModel('Chiffon', 'assets/images/cates/Chiffon.jpg'),
    CategoryDataModel('Cotton', 'assets/images/cates/Cotton.jpg'),
    CategoryDataModel('Damask', 'assets/images/cates/main.jpg'),
    CategoryDataModel('Georgette', 'assets/images/cates/Georgette.jpg'),
    CategoryDataModel('Gingham', 'assets/images/cates/Gingham.jpg'),
    CategoryDataModel('Jersey', 'assets/images/cates/main.jpg'),
    CategoryDataModel('Lace', 'assets/images/cates/main.jpg')
  ];

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
          height: Dimensions.height110,
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
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: Dimensions.width15,
                    bottom: Dimensions.width15,
                    right: Dimensions.width15
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          height: Dimensions.height160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.radius10),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    categories[index].img
                                  )
                              )
                          ),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius10),
                            color: AppColors.mainColor.withOpacity(0.6),
                          ),
                          height: Dimensions.height160,
                        ),
                      ),
                      Positioned(
                        bottom: Dimensions.height20,
                        left: Dimensions.height20,
                        child: AppTextWidget(
                          text: categories[index].text,
                          textColor: AppColors.white,
                          fontWeight: FontWeight.w800,
                          size: Dimensions.font20,
                        ),
                      )
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
