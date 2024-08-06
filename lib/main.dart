import 'package:car_rent_app/firebase_options.dart';
import 'package:car_rent_app/presentation/pages/car_list_screen.dart';
import 'package:car_rent_app/presentation/pages/onboarding_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
