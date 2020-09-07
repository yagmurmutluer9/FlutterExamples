import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide(
      {
        @required this.imageUrl,
        @required this.title,
        @required this.description});
}

final slideList = [
  Slide(
      imageUrl: 'images/facebook.png',
      title: 'Hoş geldin!',
      description: 'Teknoloji.org dünyasına hoş geldin. Teknoloji ile ilgili her konuyu bulabilirsin.'
  ),
  Slide(
      imageUrl: 'images/instagram.png',
      title: 'Takipte Kal',
      description: 'Güncel haberler, teknolojik gelişmeler ve daha fazlası için takip et!'
  ),
  Slide(
      imageUrl: 'images/linkedin.png',
      title: 'Sosyal Medyada Takip Et',
      description: 'Tüm sosyal mecralarda varız, bizi takip edebilirsin.'
  ),
];