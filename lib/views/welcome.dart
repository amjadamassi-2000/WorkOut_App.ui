import 'package:flutter/material.dart';
import 'package:gym_app_ui/style/styling.dart';
import 'package:gym_app_ui/style/text.dart';
import 'package:gym_app_ui/widget/bodyText.dart';
import 'package:gym_app_ui/widget/button.dart';
import 'package:gym_app_ui/widget/header.dart';

import 'app.dart';
import 'login.dart';


class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgroundImage(),
          Container(color: AppColor.sColor.withOpacity(0.8)),
          body(context)
        ],
      ),
    );
  }

  body(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 3, child: Header()),
        Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: PadRadius.horizontal),
              child: Column(
                children: [
                  Expanded(
                      flex: 4, child: BodyText(bodyTxt: wlcm, desc: wbody)),
                  Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Button(
                            btnTxt: wbutton,
                            border: false,
                            roundedBorder: true,
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login())),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Button(
                            btnTxt: wbutton2,
                            border: true,
                            roundedBorder: true,
                            borderColor: Colors.white,
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Application())),
                          )
                        ],
                      )),
                  Expanded(
                    flex: 2,
                    child: Center(
                        child: Text(
                      wbody2,
                      style:
                          AppTextStyle.body12.copyWith(color: AppColor.pColor),
                    )),
                  )
                ],
              ),
            ))
      ],
    );
  }

  SizedBox backgroundImage() {
    return SizedBox.expand(
        child: Image.asset(
      'assets/images/welcome.png',
      fit: BoxFit.fill,
    ));
  }
}
