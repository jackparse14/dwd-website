import 'package:dwd_website/constants/colors.dart';
import 'package:dwd_website/constants/fonts.dart';
import 'package:dwd_website/constants/info.dart';
import 'package:dwd_website/pages/pages.dart';
import 'package:dwd_website/widgets/hamburger.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppInfo.title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
        ),
        textTheme: AppFonts.headingFont,
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Widget page;
    final Size screenSize = MediaQuery.sizeOf(context);
    page = switch (selectedIndex) {
      0 => LandingPage(),
      1 => AboutPage(),
      2 => ServicesPage(),
      3 => PricingPage(),
      4 => ReviewsPage(),
      5 => FAQPage(),
      6 => BlogPage(),
      7 => ContactPage(),
      _ => throw UnimplementedError('no widget for $selectedIndex')
    };
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: _scaffoldKey,
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppBar(
                    backgroundColor:
                        Theme.of(context).colorScheme.inversePrimary,
                    title: Text(
                      AppInfo.title,
                      style: AppFonts.headingStyle(),
                    ),
                    actions: [
                      Visibility(
                        visible: screenSize.width > 1000,
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () => setState(() {
                                selectedIndex = 0;
                              }),
                              child: Text(
                                'Home',
                                style: AppFonts.navigationStyle(fontSize: 16),
                              ),
                            ),
                            TextButton(
                              onPressed: () => setState(() {
                                selectedIndex = 1;
                              }),
                              child: Text(
                                'About',
                                style: AppFonts.navigationStyle(fontSize: 16),
                              ),
                            ),
                            TextButton(
                              onPressed: () => setState(() {
                                selectedIndex = 2;
                              }),
                              child: Text(
                                'Services',
                                style: AppFonts.navigationStyle(fontSize: 16),
                              ),
                            ),
                            TextButton(
                              onPressed: () => setState(() {
                                selectedIndex = 3;
                              }),
                              child: Text(
                                'Pricing',
                                style: AppFonts.navigationStyle(fontSize: 16),
                              ),
                            ),
                            TextButton(
                              onPressed: () => setState(() {
                                selectedIndex = 4;
                              }),
                              child: Text(
                                'Reviews',
                                style: AppFonts.navigationStyle(fontSize: 16),
                              ),
                            ),
                            TextButton(
                              onPressed: () => setState(() {
                                selectedIndex = 5;
                              }),
                              child: Text(
                                'FAQ',
                                style: AppFonts.navigationStyle(fontSize: 16),
                              ),
                            ),
                            TextButton(
                              onPressed: () => setState(() {
                                selectedIndex = 6;
                              }),
                              child: Text(
                                'Blog',
                                style: AppFonts.navigationStyle(fontSize: 16),
                              ),
                            ),
                            TextButton(
                              onPressed: () => setState(() {
                                selectedIndex = 7;
                              }),
                              child: Text(
                                'Contact',
                                style: AppFonts.navigationStyle(fontSize: 16),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            )
                          ],
                        ),
                      ),
                      Visibility(
                        visible: screenSize.width <= 1000,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 8.0,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.menu),
                            onPressed: () {
                              _scaffoldKey.currentState?.openEndDrawer();
                            },
                          ),
                        ),
                      ),
                    ],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: page,
                  ),
                ),
              ],
            ),
          ),
          endDrawer: HamburgerDropDown(
            selectedIndex: selectedIndex,
            onDestinationSelected: (index) {
              setState(() {
                selectedIndex = index;
              });
              Navigator.of(context).pop();
            },
          ),
        );
      },
    );
  }
}
