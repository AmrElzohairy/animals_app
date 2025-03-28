import 'package:animals_app/features/home/presentation/ui/widgets/home_carosal_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HomeCarosalSlider extends StatefulWidget {
  const HomeCarosalSlider({super.key});

  @override
  State<HomeCarosalSlider> createState() => _HomeCarosalSliderState();
}

class _HomeCarosalSliderState extends State<HomeCarosalSlider> {
  late CarouselSliderController _carouselController;
  int currentIndex = 0;
  final List<String> animals = const [
    'assets/animal1.jpeg',
    'assets/animal2.jpeg',
    'assets/animal3.jpeg',
    "assets/carosal_image.png",
  ];
  @override
  void initState() {
    super.initState();
    _carouselController = CarouselSliderController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _carouselController,
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
              setState(() {
                currentIndex = index;
              });
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        Positioned(
          bottom: 10,
          left: MediaQuery.of(context).size.width / 2 - 32,
          child: DotsIndicator(
            dotsCount: animals.length,
            position: currentIndex.toDouble(),
            decorator: DotsDecorator(
              size: const Size(10.0, 10.0),
              color: Color(0xff4F4F4F), // Inactive color
              activeColor: Colors.yellowAccent,
            ),
          ),
        ),
      ],
    );
  }
}
