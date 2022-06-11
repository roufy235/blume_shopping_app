import 'package:blume_shopping_app/utils/colors.dart';
import 'package:blume_shopping_app/utils/dimensions.dart';
import 'package:blume_shopping_app/widgets/app_icon.dart';
import 'package:blume_shopping_app/widgets/app_text_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              pinned: true,
              backgroundColor: AppColors.mainColorLighter,
              expandedHeight: Dimensions.height350,
              toolbarHeight: 60,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/main.jpg",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20)
                    )
                ),
                child: Center(
                  child: AppTextWidget(
                    text: "Winter Collection",
                    size: Dimensions.font20,
                    textColor: Colors.black,
                  ),
                ),
              ),
            ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppIcon(
                    icon: Icons.search,
                    iconColor: AppColors.white,
                    bgColor: AppColors.mainColor.withOpacity(0.3),
                  ),
                  SizedBox(width: Dimensions.width15),
                  AppIcon(
                    icon: Icons.favorite,
                    iconColor: AppColors.white,
                    bgColor: AppColors.mainColor.withOpacity(0.3),
                  ),
                  SizedBox(width: Dimensions.width15),
                  AppIcon(
                    icon: Icons.shopping_cart,
                    iconColor: AppColors.white,
                    bgColor: AppColors.mainColor.withOpacity(0.3),
                  )
                ],
              ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppTextWidget(
                          text: "Categories",
                          textColor: AppColors.mainColor,
                        fontWeight: FontWeight.w600,
                        size: Dimensions.font16,
                      ),
                      Row(
                        children: [
                          AppTextWidget(
                              text: "All",
                              textColor: AppColors.mainColorLight.withOpacity(0.5)
                          ),
                          SizedBox(width: Dimensions.width5),
                          Icon(
                              Icons.arrow_forward_ios,
                              size: Dimensions.width15,
                              color: AppColors.mainColorLight.withOpacity(0.5)
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
