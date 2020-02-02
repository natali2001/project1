import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test123/src/page/splash_screen.dart';
import 'package:test123/src/resource/app_colors.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (_context, navigator) {
        return Theme(
          data: _themeData(_context),
          child: navigator,
        );
      },
      home: SplashScreen(),
    );
  }

  ThemeData _themeData(BuildContext context) {
    return ThemeData(
      textTheme: TextTheme(
          title: TextStyle(
        color: AppColors.blue,
        fontFamily: "Hagin",
        fontSize: 64,
      )),
    );
  }
}
