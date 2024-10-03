import 'package:dwd_website/constants/colors.dart';
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
      title: AppInfo.title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
        ),
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
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
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
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppBar(
                    backgroundColor:
                        Theme.of(context).colorScheme.inversePrimary,
                    title: const Text(AppInfo.title),
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
          endDrawer: HamburgerDropDown(),
        );
      },
    );
  }
}
