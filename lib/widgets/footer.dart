import 'package:dwd_website/constants/colors.dart';
import 'package:dwd_website/constants/info.dart';
import 'package:dwd_website/widgets/navigation_bar_buttons.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onSelect;

  const Footer({
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final navButtons = NavigationBarButtons(
      selectedIndex: selectedIndex,
      onSelect: onSelect,
      textStyle: Theme.of(context).primaryTextTheme.bodyMedium,
    );

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                const Spacer(),
                Column(
                  children: [
                    Text(
                      'Links:',
                      style: Theme.of(context).primaryTextTheme.headlineLarge,
                    ),
                    SizedBox(
                      width: 250,
                      child: Wrap(
                        spacing: 20,
                        runSpacing: 10,
                        children:
                            navButtons.buildButtons(context, buttonWidth: 100),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
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
