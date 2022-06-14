import 'package:blume_shopping_app/models/CategoryDataModel.dart';
import 'package:blume_shopping_app/utils/colors.dart';
import 'package:blume_shopping_app/utils/dimensions.dart';
import 'package:blume_shopping_app/widgets/app_icon.dart';
import 'package:blume_shopping_app/widgets/app_text_widget.dart';
import 'package:blume_shopping_app/widgets/categories_widget.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  final Function customFunction;
  const HomeTab({
    Key? key,
    required this.customFunction
  }) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
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


    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          backgroundColor: AppColors.mainColorLighter,
          expandedHeight: Dimensions.height350,
          toolbarHeight: 80,
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
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppTextWidget(
                        text: "Categories",
                        textColor: AppColors.mainColor,
                        fontWeight: FontWeight.w600,
                        size: Dimensions.font16,
                      ),
                      InkWell(
                        onTap: () {
                          widget.customFunction(1);
                        },
                        child: Row(
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
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: Dimensions.height20),
                // categories
                SizedBox(
                  height: Dimensions.height250,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return CategoriesWidget(
                          text: categories[index].text,
                          img: categories[index].img,
                        );
                      }),
                ),
                SizedBox(height: Dimensions.height20),
                Padding(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          AppTextWidget(
                              text: "CLOTHING . ",
                              textColor: AppColors.mainColorLight.withOpacity(0.5)
                          ),
                          SizedBox(width: Dimensions.width5),
                          AppTextWidget(
                            text: "T-SHIRTS",
                            textColor: AppColors.mainColor,
                            fontWeight: FontWeight.w600,
                            size: Dimensions.font16,
                          )
                        ],
                      ),
                      Icon(
                          Icons.double_arrow_sharp,
                          size: Dimensions.width15,
                          color: AppColors.mainColorLight.withOpacity(0.5)
                      )
                    ],
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                            left: Dimensions.width10,
                            right: Dimensions.width10,
                            bottom: Dimensions.height20
                        ),
                        height: Dimensions.height250,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: Dimensions.width170,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      width: double.maxFinite,
                                      height: Dimensions.height210,
                                      decoration: BoxDecoration(
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
                            ),
                            SizedBox(
                              width: Dimensions.width170,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      width: double.maxFinite,
                                      height: Dimensions.height210,
                                      decoration: BoxDecoration(
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
                            ),
                          ],
                        ),
                      );
                    })
              ],
            )
        )
      ],
    );
  }
}
