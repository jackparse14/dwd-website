//import 'package:dwd_website/constants/colors.dart';
import 'package:dwd_website/constants/fonts.dart';
import 'package:dwd_website/constants/info.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Container(
            child: const Text('Landing Page'),
            width: double.infinity,
            height: 1000,
            color: Colors.red,
          ),
        ),
        Center(
          child: Container(
            child: const Text('Landing Page'),
            width: double.infinity,
            height: 1000,
            color: Colors.blue,
          ),
        ),
      ],
    );

    //backgroundColor: AppColors.primaryColor,
  }
}
