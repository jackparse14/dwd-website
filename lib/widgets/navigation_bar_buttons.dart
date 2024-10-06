import 'package:dwd_website/constants/fonts.dart';
import 'package:flutter/material.dart';

class NavigationBarButtons extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onSelect;

  const NavigationBarButtons({
    Key? key,
    required this.selectedIndex,
    required this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttons = [
      'Home',
      'About',
      'Services',
      'Pricing',
      'Reviews',
      'FAQ',
      'Blog',
      'Contact',
    ];

    return Row(
      children: List.generate(buttons.length, (index) {
        return TextButton(
          onPressed: () => onSelect(index),
          child: Text(
            buttons[index],
            style: AppFonts.navigationStyle(fontSize: 16),
          ),
        );
      }),
    );
  }
}
