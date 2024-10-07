//import 'package:dwd_website/constants/colors.dart';
import 'package:dwd_website/constants/fonts.dart';
import 'package:dwd_website/constants/info.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomAppBar(
        color: Theme.of(context).colorScheme.inversePrimary,
        child: Text(
          AppInfo.title,
          style: AppFonts.headingStyle(),
        ),
      ),
      body: Center(
        child: Container(
          child: const Text('Landing Page'),
          width: double.infinity,
          color: Colors.red,
        ),
      ),
      //backgroundColor: AppColors.primaryColor,
    );
  }
}
