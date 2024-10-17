import 'package:dwd_website/constants/colors.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);
    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            height: screenSize.height - 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 75,
                    ),
                    Container(
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
                          maxRadius: 200.0,
                          child: Image.asset(
                            'assets/Snapchat-1336896579 (1).jpg',
                            width: 1000,
                            height: 1000,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 200,
                    ),
                    Text(
                      'Local Web Designer',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      'Small Business & SEO Specialist',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      'We uses Custom Code and Custom Designs for each Job',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      width: double.infinity,
    );
  }
}
