import 'package:flutter/material.dart';

class NavigationBarButtons extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onSelect;
  final Axis direction;
  final TextStyle? textStyle;

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
    this.textStyle,
    this.direction = Axis.horizontal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return direction == Axis.horizontal
        ? Row(
            children: _buildButtons(context),
          )
        : Column(
            children: _buildButtons(context),
          );
  }

  List<Widget> _buildButtons(context) {
    return List.generate(buttons.length, (index) {
      return TextButton(
        onPressed: () => onSelect(index),
        child: Text(
          buttons[index],
          style: textStyle ?? Theme.of(context).textTheme.headlineLarge,
        ),
      );
    });
  }
}
