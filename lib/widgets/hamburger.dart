import 'package:dwd_website/constants/colors.dart';
import 'package:dwd_website/pages/pages.dart';
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
            padding: const EdgeInsets.all(16),
            child: Text(
              AppInfo.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.headlineLarge,
            ),
          ),
        ),
        const SizedBox(height: 16),
        ...destinations.map(
          (Pages destination) {
            return NavigationDrawerDestination(
              label: Text(
                destination.label,
                style: Theme.of(context).textTheme.bodyLarge,
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
