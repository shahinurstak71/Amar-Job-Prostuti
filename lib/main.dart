import 'package:amar_jobprostuti/views/screens/home_screen.dart';
import 'package:amar_jobprostuti/views/screens/onboarding/onBoarding_1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shirajul Branch',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnBoardingOne(),

    );
  }
}

