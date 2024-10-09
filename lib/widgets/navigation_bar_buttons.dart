import 'package:flutter/material.dart';

class NavigationBarButtons extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onSelect;
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
  }) : super(key: key);

  List<Widget> buildButtons(context, {double? buttonWidth}) {
    return List.generate(buttons.length, (index) {
      return SizedBox(
        width: buttonWidth,
        child: TextButton(
          onPressed: () => onSelect(index),
          child: Text(
            buttons[index],
            style: textStyle ?? Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
