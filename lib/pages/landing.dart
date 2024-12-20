import 'package:dwd_website/constants/colors.dart';
import 'package:dwd_website/constants/info.dart';
import 'package:dwd_website/widgets/rounded_image.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);
    final bool isLargeScreen = screenSize.width > AppInfo.mediumScreen + 100;
    final bool isMedScreen = screenSize.width > AppInfo.smallScreen &&
        screenSize.width <= AppInfo.mediumScreen + 100;

    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            height: screenSize.height - 200,
            child: isLargeScreen
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
                : isMedScreen
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MainLandingPhoto(0.25),
                          const SizedBox(
                            width: 40,
                          ),
                          MainLandingText(0.15, 0.035),
                        ],
                      )
                    : Column(
                        children: [
                          MainLandingPhoto(0.4),
                          MainLandingText(0.03, 0.06),
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
  final double containerWidthMultiplier;

  MainLandingPhoto([this.containerWidthMultiplier = 0.2]);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);
    final double screenWidth = screenSize.width;
    final double containerWidth = screenWidth * containerWidthMultiplier;
    final double imageRadius = screenWidth * (containerWidthMultiplier / 2);
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
          child: RoundedImage(
            maxRadius: imageRadius,
            height: imageRadius * 4,
            width: imageRadius * 4,
            path: 'assets/Snapchat-1336896579 (1).jpg',
          ),
        ),
      ],
    );
  }
}

class MainLandingText extends StatelessWidget {
  final double sizedBoxHeightMultiplier;
  final double textSizeMultiplier;
  MainLandingText([
    this.sizedBoxHeightMultiplier = 0.2,
    this.textSizeMultiplier = 0.025,
  ]);
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);
    final double screenWidth = screenSize.width;
    final double sizedBoxHeight = screenSize.height * sizedBoxHeightMultiplier;
    final double textSize = screenWidth * textSizeMultiplier;
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
            'Small Business & SEO Specialists',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontSize: textSize * 0.8),
          ),
          Text(
            'We create 100% custom code and designs for each Job!',
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
