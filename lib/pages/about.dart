import 'package:flutter/material.dart';
import 'package:dwd_website/widgets/rounded_image.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [
          Row(
            children: [
              RoundedImage(
                maxRadius: 100,
                height: 500,
                width: 500,
                path: 'assets/Snapchat-1336896579 (1).jpg',
              ),
            ],
          ),
        ],
      ),
      width: double.infinity,
      height: 2000,
      color: Colors.orange,
    );
  }
}
