import 'package:animals_app/features/onboarding/home/presentation/ui/widgets/home_carosal_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeCarosalSlider extends StatelessWidget {
  const HomeCarosalSlider({super.key});
  final List<String> animals = const [
    'assets/animal1.jpeg',
    'assets/animal2.jpeg',
    'assets/animal3.jpeg',
    "assets/carosal_image.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items:
              animals.map((animal) {
                return Builder(
                  builder: (BuildContext context) {
                    return HomeCarosalItem(image: animal);
                  },
                );
              }).toList(),
          options: CarouselOptions(
            aspectRatio: 293.22 / 135,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            onPageChanged: (index, reason) {
              // Handle page change
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
