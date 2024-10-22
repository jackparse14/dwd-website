import 'package:dwd_website/constants/colors.dart';
import 'package:dwd_website/constants/info.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);
    //final bool isLargeScreen = screenSize.width > AppInfo.mediumScreen + 100;
    final bool isMedScreen = screenSize.width > AppInfo.smallScreen;

    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            height: screenSize.height - 200,
            child: isMedScreen
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MainLandingPhoto(),
                      const SizedBox(
                        width: 40,
                      ),
                      MainLandingText(),
                    ],
                  )
                : Column(
                    children: [
                      MainLandingPhoto(),
                      MainLandingText(0.03),
                    ],
                  ),
          ),
        ],
      ),
      width: double.infinity,
    );
  }
}

class MainLandingPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);
    final double screenWidth = screenSize.width;
    final double containerWidth = screenWidth * 0.2;
    final double imageRadius = screenWidth * 0.1;
    final double sizedBoxHeight = screenSize.height * 0.2;
    return Column(
      children: [
        SizedBox(
          height: sizedBoxHeight * 0.4,
        ),
        Container(
          width: containerWidth,
          decoration: BoxDecoration(
            color: AppColors.lightColor,
            borderRadius: BorderRadius.circular(27.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(27.0),
            child: CircleAvatar(
              maxRadius: imageRadius,
              child: Image.asset(
                'assets/Snapchat-1336896579 (1).jpg',
                width: imageRadius * 4,
                height: imageRadius * 4,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MainLandingText extends StatelessWidget {
  final double sizedBoxHeightMultiplier;
  MainLandingText([this.sizedBoxHeightMultiplier = 0.2]);
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);
    final double screenWidth = screenSize.width;
    final double sizedBoxHeight = screenSize.height * sizedBoxHeightMultiplier;
    final double textSize = screenWidth * 0.025;
    return Flexible(
      child: Column(
        children: [
          SizedBox(
            height: sizedBoxHeight,
          ),
          Text(
            'Local Web Designer',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontSize: textSize * 1.1),
          ),
          Text(
            'Small Business & SEO Specialist',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontSize: textSize * 0.8),
          ),
          Text(
            'We uses Custom Code and Custom Designs for each Job',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontSize: textSize * 0.5),
          ),
        ],
      ),
    );
  }
}
