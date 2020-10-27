import 'package:app_fast_dish/app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.outerSpace,
      body: Column(
        children: [
          Container(width: 50, height: 50, color: CustomColors.riverBed),
        ],
      ),
    );
  }
}
