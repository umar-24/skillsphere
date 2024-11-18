import 'package:flutter/material.dart';
import 'package:skillsphere/screens/onboarding/onboarding_screen.dart';

// A simple splash provider for managing state
class SplashProvider with ChangeNotifier {
  
  void navigateToLogin(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }
}