import 'package:flutter/material.dart';
import 'package:pdf_viewer/home_layout.dart';
import 'package:pdf_viewer/screens/login.dart';
import 'package:pdf_viewer/screens/on_boarding_screen.dart';
import 'package:pdf_viewer/screens/register.dart';
import 'package:pdf_viewer/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
       initialRoute: 'Splash',
        routes: {
          '/':(context) => const HomeScreen(),
          'login':(context) => const login(),
          'Splash':(context) => const SplashScreen(),
          'onboarding':(context) => const OnBoardingScreen(),
          'Reg':(context) => const Reg(),
        },
    );
  }
}
