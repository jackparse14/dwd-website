import 'package:dwd_website/constants/colors.dart';
import 'package:dwd_website/constants/theme.dart';
import 'package:dwd_website/constants/info.dart';
import 'package:dwd_website/pages/pages.dart';
import 'package:dwd_website/widgets/footer.dart';
import 'package:dwd_website/widgets/hamburger.dart';
import 'package:dwd_website/widgets/header.dart';
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
      theme: AppTheme.theme,
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
  final scrollController = ScrollController();

  final List<Widget> pages = [
    LandingPage(),
    AboutPage(),
    ServicesPage(),
    PricingPage(),
    ReviewsPage(),
    FAQPage(),
    BlogPage(),
    ContactPage(),
  ];

  void _onNavSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: _scaffoldKey,
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 200,
                    ),
                    Container(
                      child: (() {
                        return switch (selectedIndex) {
                          0 => Text(
                              'Hello',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          1 => Text(
                              'About',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          _ => pages[selectedIndex]
                        };
                      })(),
                    ),
                    pages[selectedIndex],
                    Footer(
                      selectedIndex: selectedIndex,
                      onSelect: _onNavSelected,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primaryColor.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Container(
                      constraints: AppInfo.mainWrapper,
                      child: Header(
                        selectedIndex: selectedIndex,
                        onSelect: _onNavSelected,
                        scaffoldKey: _scaffoldKey,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          endDrawer: HamburgerDropDown(
            selectedIndex: selectedIndex,
            onDestinationSelected: (index) {
              _onNavSelected(index);
              Navigator.of(context).pop();
            },
          ),
        );
      },
    );
  }
}
