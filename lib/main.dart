import 'package:car_rent_app/presentation/pages/car_list_screen.dart';
import 'package:car_rent_app/presentation/pages/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car rent',
      theme: ThemeData(
        useMaterial3: true,
      ),
      // home: const OnboardingPage(),
      home: CarListScreen(),
    );
  }
}
