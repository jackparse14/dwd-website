import 'package:dwd_website/constants/colors.dart';
import 'package:dwd_website/constants/fonts.dart';
import 'package:dwd_website/constants/info.dart';
import 'package:dwd_website/widgets/navigation_bar_buttons.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  void _onNavSelected(int index) {
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      AppInfo.title,
                      style: AppFonts.headingStyle(color: AppColors.lightColor),
                    ),
                    Text(
                      'Lorem Ipsum',
                      style: Theme.of(context).primaryTextTheme.bodyLarge,
                    ),
                    ElevatedButton(
                      onPressed: () => 'Button Pressed',
                      child: const Text('Get Started!'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Links:',
                      style: AppFonts.headingStyle(color: AppColors.lightColor),
                    ),
                    NavigationBarButtons(
                      selectedIndex: 0,
                      onSelect: _onNavSelected,
                      direction: Axis.vertical,
                      textStyle: Theme.of(context).primaryTextTheme.bodyLarge,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Contact Info:',
                      style: AppFonts.headingStyle(color: AppColors.lightColor),
                    ),
                    Text(
                      '07525 234494',
                      style: Theme.of(context).primaryTextTheme.bodyLarge,
                    ),
                    Text(
                      'jack.parsons@dartfordwebdesigns.co.uk',
                      style: Theme.of(context).primaryTextTheme.bodyLarge,
                    ),
                    Text(
                      'Dartford',
                      style: Theme.of(context).primaryTextTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            ),
            const Divider(),
            Text(
              '© Copyright 2024 Dartford Web Designs',
              style: Theme.of(context).primaryTextTheme.bodySmall,
            ),
          ],
        ),
      ),
      width: double.infinity,
      color: AppColors.primaryColor,
    );
  }
}
