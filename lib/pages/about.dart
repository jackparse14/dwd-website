import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          Text(
            'About',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
      width: double.infinity,
      height: 2000,
      color: Colors.orange,
    );
  }
}
