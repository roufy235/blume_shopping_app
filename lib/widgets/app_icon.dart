import 'package:blume_shopping_app/utils/colors.dart';
import 'package:blume_shopping_app/utils/dimensions.dart';
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color? iconColor, bgColor;
  const AppIcon({
    Key? key,
    required this.icon,
    required this.bgColor,
    required this.iconColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimensions.width10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: bgColor
      ),
      child: Icon(
        icon,
        color: iconColor
      ),
    );
  }
}
