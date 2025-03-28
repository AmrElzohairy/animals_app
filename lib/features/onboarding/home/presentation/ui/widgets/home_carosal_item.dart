import 'package:flutter/material.dart';

class HomeCarosalItem extends StatelessWidget {
  const HomeCarosalItem({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(image, // Use the image passed to the constructor
          width: double.infinity, fit: BoxFit.cover),
    );
  }
}