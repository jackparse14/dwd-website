import 'package:dwd_website/constants/colors.dart';
import 'package:dwd_website/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:dwd_website/constants/info.dart';

class HamburgerDropDown extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  const HamburgerDropDown({
    Key? key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      onDestinationSelected: onDestinationSelected,
      selectedIndex: selectedIndex,
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            color: AppColors.primaryColor,
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: Text(
              AppInfo.title,
              textAlign: TextAlign.center,
              style: AppFonts.headingStyle(color: AppColors.lightColor),
            ),
          ),
        ),
        const SizedBox(height: 16),
        ...destinations.map(
          (Pages destination) {
            return NavigationDrawerDestination(
              label: Text(
                destination.label,
                style: AppFonts.navigationStyle(),
              ),
              icon: destination.icon,
              selectedIcon: destination.selectedIcon,
            );
          },
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
          child: Divider(),
        ),
      ],
    );
  }
}

class Pages {
  const Pages(this.label, this.icon, this.selectedIcon);

  final String label;
  final Widget icon;
  final Widget selectedIcon;
}

const List<Pages> destinations = <Pages>[
  Pages(
    'Home',
    Icon(Icons.home_outlined),
    Icon(Icons.home),
  ),
  Pages(
    'About',
    Icon(Icons.info_outlined),
    Icon(Icons.info),
  ),
  Pages(
    'Services',
    Icon(Icons.mouse_outlined),
    Icon(Icons.mouse),
  ),
  Pages(
    'Pricing',
    Icon(Icons.sell_outlined),
    Icon(Icons.sell),
  ),
  Pages(
    'Reviews',
    Icon(Icons.remove_red_eye_outlined),
    Icon(Icons.remove_red_eye),
  ),
  Pages(
    'FAQ',
    Icon(Icons.help_outline),
    Icon(Icons.help),
  ),
  Pages(
    'Blog',
    Icon(Icons.edit_outlined),
    Icon(Icons.edit),
  ),
  Pages(
    'Contact',
    Icon(Icons.call_outlined),
    Icon(Icons.call),
  ),
];
