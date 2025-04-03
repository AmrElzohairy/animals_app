import 'package:flutter/material.dart';

class HomeCarosalItem extends StatelessWidget {
  const HomeCarosalItem({super.key, required this.image, required this.text});
  final String image;
  final String text ;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: [
          Image.asset(
            image, // Use the image passed to the constructor
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
