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
                    Text(
                      AppInfo.title,
                      style: Theme.of(context).primaryTextTheme.headlineLarge,
                    ),
                    Text(
                      'Lorem Ipsum',
                      style: Theme.of(context).primaryTextTheme.bodyMedium,
                    ),
                    ElevatedButton(
                      onPressed: () => 'Button Pressed',
                      child: Text(
                        'Get Started!',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Links:',
                      style: Theme.of(context).primaryTextTheme.headlineLarge,
                    ),
                    NavigationBarButtons(
                      selectedIndex: 0,
                      onSelect: _onNavSelected,
                      direction: Axis.vertical,
                      textStyle: Theme.of(context).primaryTextTheme.bodyMedium,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Contact Info:',
                      style: Theme.of(context).primaryTextTheme.headlineLarge,
                    ),
                    Text(
                      '07525 234494',
                      style: Theme.of(context).primaryTextTheme.bodyMedium,
                    ),
                    Text(
                      'jack.parsons@dartfordwebdesigns.co.uk',
                      style: Theme.of(context).primaryTextTheme.bodyMedium,
                    ),
                    Text(
                      'Dartford',
                      style: Theme.of(context).primaryTextTheme.bodyMedium,
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
