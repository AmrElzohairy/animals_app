import 'package:animals_app/features/onboarding/presentation/ui/onboarding_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnimalsApp());
}

class AnimalsApp extends StatelessWidget {
  const AnimalsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animals app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: OnBoarding(),
    );
  }
}
