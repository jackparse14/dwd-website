import 'package:flutter/material.dart';

export 'about.dart';
export 'blog.dart';
export 'contact.dart';
export 'faq.dart';
export 'landing.dart';
export 'pricing.dart';
export 'reviews.dart';
export 'services.dart';

class Pages {
  const Pages(this.label, this.icon, this.selectedIcon);

  final String label;
  final Widget icon;
  final Widget selectedIcon;
}

const List<Pages> destinations = <Pages>[
  Pages(
    'Home',
    Icon(Icons.home_outlined),
    Icon(Icons.home),
  ),
  Pages(
    'About',
    Icon(Icons.info_outlined),
    Icon(Icons.info),
  ),
  Pages(
    'Services',
    Icon(Icons.mouse_outlined),
    Icon(Icons.mouse),
  ),
  Pages(
    'Pricing',
    Icon(Icons.sell_outlined),
    Icon(Icons.sell),
  ),
  Pages(
    'Reviews',
    Icon(Icons.remove_red_eye_outlined),
    Icon(Icons.remove_red_eye),
  ),
  Pages(
    'FAQ',
    Icon(Icons.help_outline),
    Icon(Icons.help),
  ),
  Pages(
    'Blog',
    Icon(Icons.edit_outlined),
    Icon(Icons.edit),
  ),
  Pages(
    'Contact',
    Icon(Icons.call_outlined),
    Icon(Icons.call),
  ),
];
