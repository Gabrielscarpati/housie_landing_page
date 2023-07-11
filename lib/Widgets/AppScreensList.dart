import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AppScreensList extends StatefulWidget {
  @override
  _AppScreensListState createState() => _AppScreensListState();
}

class _AppScreensListState extends State<AppScreensList> {
  final List<String> _screens = [
    'assets/explicando1.jpeg',
    'assets/explicando2.jpeg',
    'assets/explicando3.jpeg',
    'assets/explicando4.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(autoPlay: true, aspectRatio: 1),
      items: _screens.map((e) => Image.asset(e)).toList(),
    );
  }
}
