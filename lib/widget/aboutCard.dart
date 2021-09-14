import 'package:flutter/material.dart';
import 'package:gym_app_ui/style/styling.dart';

class AboutCard extends StatelessWidget {
  final String txt;
  final String descText;
  final bool isSelected;
  const AboutCard(
      { this.descText, @required this.txt, this.isSelected});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.tColor, borderRadius: BorderRadius.circular(15)),
      width: 195,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: PadRadius.horizontal - 15,
            vertical: PadRadius.vertical),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Container(
                    height: 34,
                    width: 34,
                    decoration: BoxDecoration(
                        color: AppColor.sColor, shape: BoxShape.circle),
                    child: isSelected
                        ? Icon(
                            Icons.done,
                            color: AppColor.pColor,
                          )
                        : null)),
            Text(
              txt,
              style: AppTextStyle.body20.copyWith(
                  fontSize: 30,
                  color: AppColor.pColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(descText, style: AppTextStyle.body12)
          ],
        ),
      ),
    );
  }
}
