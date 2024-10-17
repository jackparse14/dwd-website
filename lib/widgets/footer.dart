import 'package:dwd_website/constants/colors.dart';
import 'package:dwd_website/constants/info.dart';
import 'package:dwd_website/widgets/navigation_bar_buttons.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onSelect;

  const Footer({
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);
    final bool isLargeScreen = screenSize.width > AppInfo.mediumScreen + 100;
    final bool isMedScreen = screenSize.width > AppInfo.smallScreen &&
        screenSize.width <= AppInfo.mediumScreen + 100;

    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100.0),
        child: Center(
          child: Container(
            constraints: AppInfo.mainWrapper,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 80),
                  child: isLargeScreen
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: TitleSection()),
                            Expanded(
                              child: LinksSection(
                                selectedIndex: selectedIndex,
                                onSelect: onSelect,
                              ),
                            ),
                            Expanded(child: ContactSection()),
                          ],
                        )
                      : isMedScreen
                          ? Column(
                              children: [
                                Row(
                                  children: [Expanded(child: TitleSection())],
                                ),
                                const SizedBox(
                                  height: 60,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: LinksSection(
                                        selectedIndex: selectedIndex,
                                        onSelect: onSelect,
                                      ),
                                    ),
                                    Expanded(child: ContactSection()),
                                  ],
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                TitleSection(),
                                const SizedBox(height: 60),
                                LinksSection(
                                  selectedIndex: selectedIndex,
                                  onSelect: onSelect,
                                ),
                                const SizedBox(height: 60),
                                ContactSection(),
                              ],
                            ),
                ),
                const Divider(),
                Text(
                  '© Copyright 2024 Dartford Web Designs',
                  style: Theme.of(context).primaryTextTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),
      width: double.infinity,
      color: AppColors.primaryColor,
    );
  }
}

class TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppInfo.title,
          style: Theme.of(context).primaryTextTheme.headlineLarge,
        ),
        Text(
          '// TODO: PUT SLOGAN HERE',
          style: Theme.of(context).primaryTextTheme.bodyMedium,
        ),
        const SizedBox(
          height: 16,
        ),
        ElevatedButton(
          onPressed: () => 'Button Pressed',
          child: Text(
            'Get Started!',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}

class LinksSection extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onSelect;

  const LinksSection({
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final navButtons = NavigationBarButtons(
      selectedIndex: selectedIndex,
      onSelect: onSelect,
      textStyle: Theme.of(context).primaryTextTheme.bodyMedium,
    );
    return Column(
      children: [
        Text(
          'Links:',
          style: Theme.of(context).primaryTextTheme.headlineLarge,
        ),
        SizedBox(
          width: 200,
          child: Wrap(
            children: navButtons.buildButtons(
              context,
              buttonWidth: 100,
            ),
          ),
        ),
      ],
    );
  }
}

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Contact Info:',
          style: Theme.of(context).primaryTextTheme.headlineLarge,
        ),
        Text(
          '07525 234494',
          style: Theme.of(context).primaryTextTheme.bodyMedium,
        ),
        Text(
          'jack.parsons@dartfordwebdesigns.co.uk',
          style: Theme.of(context).primaryTextTheme.bodyMedium,
        ),
        Text(
          'Dartford, Kent, United Kingdom',
          style: Theme.of(context).primaryTextTheme.bodyMedium,
        ),
      ],
    );
  }
}
