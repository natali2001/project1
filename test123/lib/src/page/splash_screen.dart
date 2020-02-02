import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test123/src/resource/app_colors.dart';
import 'package:test123/src/resource/app_strings.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  //list with app colors;
  List<Color> _color = [
    AppColors.white,
    AppColors.black,
    AppColors.white,
    AppColors.red
  ];
  //generates random index;
  Random _random = Random();
  int _index = 0;
// change  background color;
  void _changeColor() {
    setState(() {
      _index = _random.nextInt(4);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _changeColor();
      },
      child: Scaffold(
        backgroundColor: _color[_index],
        body: Center(
          child:
              Text(AppStrings.logo, style: Theme.of(context).textTheme.title),
        ),
      ),
    );
  }
}
