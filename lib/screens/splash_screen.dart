import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:pdf_viewer/screens/on_boarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
        logo: Image.asset(
          'assets/images/FCI.png',
          alignment: Alignment.center,
          fit: BoxFit.fill,
        ),
        backgroundColor: const Color.fromARGB(255, 94, 167, 227),
        title: const Text(
          'FCI Courses',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              wordSpacing: 5,
              height: 4),
        ),
        showLoader: true,
        loaderColor: Colors.white,
        logoWidth: 180,
        loadingTextPadding: const EdgeInsets.only(bottom: 25),
        loadingText: const Text("Loading...",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        navigator: const OnBoardingScreen(),
        durationInSeconds: 3,
    );
  }
}
