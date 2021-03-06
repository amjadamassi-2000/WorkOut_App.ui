import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gym_app_ui/style/styling.dart';
import 'package:gym_app_ui/views/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Workout',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Aeonik',
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColor.tColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Welcome(),
    );
  }
}
