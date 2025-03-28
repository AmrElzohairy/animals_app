import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Text(
            'Hello Anderson',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17.31,
              fontFamily: 'Nunito Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
          Spacer(),
          Container(
            width: 42.30,
            height: 42.30,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg",
                ),
                fit: BoxFit.cover,
              ),
              shape: OvalBorder(
                side: BorderSide(width: 1.92, color: Colors.white),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x0881D8F1),
                  blurRadius: 9.63,
                  offset: Offset(0, 12.04),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0x1181D8F1),
                  blurRadius: 76.91,
                  offset: Offset(0, 96.14),
                  spreadRadius: 0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
