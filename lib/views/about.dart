import 'package:flutter/material.dart';
import 'package:gym_app_ui/style/styling.dart';
import 'package:gym_app_ui/style/text.dart';
import 'package:gym_app_ui/widget/aboutCard.dart';
import 'package:gym_app_ui/widget/about_button.dart';
import 'package:gym_app_ui/widget/bodyText.dart';
import 'package:gym_app_ui/widget/header.dart';

import 'app.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox.expand(
            child: Image.asset(
          'assets/images/about.png',
          fit: BoxFit.fill,
        )),
        Container(color: AppColor.sColor.withOpacity(0.8)),
        Column(
          children: [
            Expanded(flex: 3, child: Header()),
            Expanded(
                flex: 4,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: PadRadius.horizontal),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 6, child: BodyText(bodyTxt: abt, desc: abody)),
                      SizedBox(height: 25),
                      Expanded(
                          flex: 9,
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                AboutCard(
                                  txt: abody2,
                                  descText: abody2i,
                                  isSelected: true,
                                ),
                                SizedBox(width: 20),
                                AboutCard(
                                  txt: abody3,
                                  descText: abody3i,
                                  isSelected: false,
                                ),
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 5,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AboutButton(
                                  text: abody4,
                                  onPress: () => Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Application())),
                                ),
                                AboutButton(
                                    isColoredButton: true,
                                    text: abody5,
                                    onPress: null)
                              ],
                            ),
                          ))
                    ],
                  ),
                ))
          ],
        )
      ],
    ));
  }
}
