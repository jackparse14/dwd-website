import 'package:dwd_website/constants/theme.dart';
import 'package:dwd_website/constants/info.dart';
import 'package:dwd_website/pages/pages.dart';
import 'package:dwd_website/widgets/footer.dart';
import 'package:dwd_website/widgets/hamburger.dart';
import 'package:dwd_website/widgets/navigation_bar_buttons.dart';
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
    final Size screenSize = MediaQuery.sizeOf(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: _scaffoldKey,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AppBar(
                  toolbarHeight: 80.0,
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                  title: Text(
                    AppInfo.title,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  actions: [
                    if (screenSize.width > 1200)
                      NavigationBarButtons(
                        selectedIndex: selectedIndex,
                        onSelect: _onNavSelected,
                        textStyle: Theme.of(context).textTheme.bodyLarge,
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
                            _scaffoldKey.currentState?.openEndDrawer();
                          },
                        ),
                      ),
                  ],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      pages[selectedIndex],
                      Footer(),
                    ],
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
