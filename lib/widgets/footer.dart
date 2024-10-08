import 'package:dwd_website/constants/colors.dart';
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
                    const Text(
                      AppInfo.title,
                      style: TextStyle(color: AppColors.lightColor),
                    ),
                    const Text(
                      'Lorem Ipsum',
                      style: TextStyle(color: AppColors.lightColor),
                    ),
                    ElevatedButton(
                      onPressed: () => 'Button Pressed',
                      child: const Text('Get Started!'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      'Links:',
                      style: TextStyle(color: AppColors.lightColor),
                    ),
                    NavigationBarButtons(
                      selectedIndex: 0,
                      onSelect: _onNavSelected,
                      direction: Axis.vertical,
                    ),
                  ],
                ),
                const Column(
                  children: [
                    Text(
                      'Contact Info:',
                      style: TextStyle(color: AppColors.lightColor),
                    ),
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(color: AppColors.lightColor),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(),
            const Text(
              '© Copyright 2024 Dartford Web Designs',
              style: TextStyle(color: AppColors.lightColor),
            ),
          ],
        ),
      ),
      width: double.infinity,
      color: AppColors.primaryColor,
    );
  }
}
