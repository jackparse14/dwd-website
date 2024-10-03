import 'package:dwd_website/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:dwd_website/constants/info.dart';

class HamburgerDropDown extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HamburgerDropDown();
}

class _HamburgerDropDown extends State<HamburgerDropDown> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  var selectedIndex = 0;
  late bool showNavigationDrawer;

  void handleScreenChanged(int selectedScreen) {
    setState(() {
      selectedIndex = selectedScreen;
    });
  }

  void openDrawer() {
    scaffoldKey.currentState!.openEndDrawer();
  }

  @override
  // Widget build(BuildContext context) {
  //   return Drawer(
  //     child: ListView(
  //       padding: EdgeInsets.zero,
  //       children: <Widget>[
  //         const DrawerHeader(
  //           child: Text(
  //             style: TextStyle(color: AppColors.lightColor),
  //             AppInfo.title,
  //           ),
  //           decoration: BoxDecoration(color: AppColors.primaryColor),
  //         ),
  //         NavigationRail(
  //           destinations: const [
  //             NavigationRailDestination(
  //               icon: Icon(Icons.home),
  //               label: Text('Home'),
  //             ),
  //             NavigationRailDestination(
  //               icon: Icon(Icons.favorite),
  //               label: Text('Favourites'),
  //             ),
  //           ],
  //           selectedIndex: selectedIndex,
  //           onDestinationSelected: (value) {
  //             setState(() {
  //               selectedIndex = value;
  //               Navigator.pop(context);
  //             });
  //           },
  //         ),
  //         // ListTile(
  //         //   leading: const Icon(Icons.change_history),
  //         //   title: const Text('Home'),
  //         //   onTap: () {

  //         //     Navigator.pop(context);
  //         //   },
  //         // ),
  //         // ListTile(
  //         //   leading: const Icon(Icons.change_history),
  //         //   title: const Text('About'),
  //         //   onTap: () {
  //         //     // Update the state of the app
  //         //     // Then close the drawer
  //         //     Navigator.pop(context);
  //         //   },
  //         // ),
  //       ],
  //     ),
  //   );
  // }

  // ElevatedButton(
  //                   onPressed: openDrawer,
  //                   child: const Text('Open Drawer'),
  //                 ),

  Widget build(BuildContext context) {
    return NavigationDrawer(
      onDestinationSelected: handleScreenChanged,
      selectedIndex: selectedIndex,
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            color: AppColors.primaryColor,
          ),
          child: const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 28, 16),
            child: Text(
              AppInfo.title,
              style: TextStyle(fontSize: 24, color: AppColors.lightColor),
            ),
          ),
        ),
        const SizedBox(height: 16),
        ...destinations.map(
          (Pages destination) {
            return NavigationDrawerDestination(
              label: Text(destination.label),
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
