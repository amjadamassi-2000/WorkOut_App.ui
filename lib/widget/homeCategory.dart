import 'package:flutter/material.dart';
import 'package:gym_app_ui/style/styling.dart';

class HomeCategory extends StatelessWidget {
  final String categoryName;
  final bool isSelected;
  const HomeCategory({ this.categoryName, this.isSelected = false})
     ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isSelected ? 28 : null,
      width: isSelected ? 92 : null,
      decoration: isSelected
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(PadRadius.radius),
              border: Border.all(color: AppColor.pColor))
          : null,
      child: Center(
        child: Text(
          categoryName,
          style: AppTextStyle.body12,
        ),
      ),
    );
  }
}
