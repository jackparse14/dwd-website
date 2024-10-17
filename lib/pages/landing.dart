import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/Snapchat-1336896579.jpg',
              width: 300,
            ),
          ),
          const Column(
            children: [
              Text('Local Web Engineer for Small Businesses'),
              Text('Custom Code and Custom Designs for each Job'),
            ],
          ),
        ],
      ),
      width: double.infinity,
    );
  }
}
