import 'package:flutter/material.dart';

import '../../../home/presentation/ui/home_view.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/onboarding_image.png",
                width: double.infinity,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.75,
              ),
              Positioned(
                left: 10,
                top: MediaQuery.of(context).size.height * 0.55,
                child: Text(
                  'Discover nature\nand explore beyond',
                  style: TextStyle(
                    color: const Color(0xFFFBFCFF),
                    fontSize: 28.84,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 1.55,
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: MediaQuery.of(context).size.height * 0.65,
                child: Text(
                  'find with us your dream house\nquickly and precisely\n',
                  style: TextStyle(
                    color: Color(0xFFFBFCFF).withValues(alpha: 0.7),
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    height: 1.27,
                    letterSpacing: 0.67,
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  HomeView()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2F2F2E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.38,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 35.57,
                      height: 35.57,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFBEDE61),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.50),
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
