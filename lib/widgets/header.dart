import 'package:dwd_website/constants/info.dart';
import 'package:dwd_website/widgets/navigation_bar_buttons.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onSelect;
  final GlobalKey<ScaffoldState> scaffoldKey;

  const Header({
    required this.selectedIndex,
    required this.onSelect,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    final navButtons = NavigationBarButtons(
      selectedIndex: selectedIndex,
      onSelect: onSelect,
      textStyle: Theme.of(context).textTheme.bodyLarge,
    );
    final Size screenSize = MediaQuery.sizeOf(context);
    return AppBar(
      scrolledUnderElevation: 0,
      toolbarHeight: 80.0,
      backgroundColor: Colors.transparent,
      title: Text(
        AppInfo.title,
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      actions: [
        if (screenSize.width > 1200)
          Row(
            children: navButtons.buildButtons(context),
          ),
        const SizedBox(
          width: 12.0,
        ),
        if (screenSize.width <= 1200)
          Padding(
            padding: const EdgeInsets.only(
              right: 12.0,
            ),
            child: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                scaffoldKey.currentState?.openEndDrawer();
              },
            ),
          ),
      ],
    );
  }
}
