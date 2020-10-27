import 'package:app_fast_dish/app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

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
