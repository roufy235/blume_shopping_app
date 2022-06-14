import 'package:blume_shopping_app/screens/home/tabs/categories_tab.dart';
import 'package:blume_shopping_app/screens/home/tabs/home_tab.dart';
import 'package:blume_shopping_app/utils/colors.dart';
import 'package:blume_shopping_app/widgets/app_text_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final List<Widget> tabs = <Widget>[
      HomeTab(customFunction: _onItemTapped),
      CategoriesTab(customFunction: _onItemTapped),
      Center(
        child: AppTextWidget(text: "Profile", textColor: AppColors.mainColor),
      ),
      Center(
        child: AppTextWidget(text: "Cart", textColor: AppColors.mainColor),
      ),
      Center(
        child: AppTextWidget(text: "More", textColor: AppColors.mainColor),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: tabs.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: _currentIndex,
          selectedItemColor: AppColors.mainColorLighter,
          showUnselectedLabels: false,
          selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'SofiaPro'),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: 'SofiaPro',
          ),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: AppColors.mainColor,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
                color: AppColors.mainColor,
              ),
              label: "Categories",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: AppColors.mainColor,
              ),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                color: AppColors.mainColor,
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz,
                color: AppColors.mainColor,
              ),
              label: "more",
            )
          ]),
    );
  }
}
