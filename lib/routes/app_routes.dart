import 'package:flutter/material.dart';
import 'package:skillsphere/screens/authentication/login_screen.dart';
import 'package:skillsphere/screens/home_screen.dart';
import 'package:skillsphere/screens/onboarding/onboarding_screen.dart';
import 'package:skillsphere/screens/splashScreen/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:skillsphere/provider/onBoarding_provider.dart';

class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String login = '/login';  // Add the route for LoginScreen

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case home:
        return MaterialPageRoute(
          builder: (context) {
            return Consumer<OnboardingProvider>(
              builder: (context, onboardingProvider, _) {
                if (onboardingProvider.isFirstLaunch) {
                  return const OnboardingScreen();
                } else {
                  return const HomeScreen();
                }
              },
            );
          },
        );

      case login:  // Handle the LoginScreen route
        return MaterialPageRoute(builder: (_) => const LoginScreen()); 

      default:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
    }
  }
}
