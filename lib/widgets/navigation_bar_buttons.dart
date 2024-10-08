import 'package:dwd_website/constants/fonts.dart';
import 'package:flutter/material.dart';

class NavigationBarButtons extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onSelect;
  final Axis direction;

  static const List<String> buttons = [
    'Home',
    'About',
    'Services',
    'Pricing',
    'Reviews',
    'FAQ',
    'Blog',
    'Contact',
  ];

  const NavigationBarButtons({
    Key? key,
    required this.selectedIndex,
    required this.onSelect,
    required this.direction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return direction == Axis.horizontal
        ? Row(
            children: _buildButtons(),
          )
        : Column(
            children: _buildButtons(),
          );
  }

  List<Widget> _buildButtons() {
    return List.generate(buttons.length, (index) {
      return TextButton(
        onPressed: () => onSelect(index),
        child: Text(
          buttons[index],
          style: AppFonts.navigationStyle(fontSize: 16),
        ),
      );
    });
  }
}
