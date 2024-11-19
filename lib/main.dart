import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skillsphere/core/constants/colors.dart';
import 'package:skillsphere/provider/onBoarding_provider.dart';
import 'package:skillsphere/provider/splash_provider.dart';
import 'package:skillsphere/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashProvider()),
        ChangeNotifierProvider(
            create: (_) => OnboardingProvider()..checkIfFirstLaunch()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: "Poppins",
            scaffoldBackgroundColor: AppColors.offWhite,
            appBarTheme: AppBarTheme(backgroundColor: AppColors.offWhite)),
        initialRoute: AppRoutes.splash,
        onGenerateRoute: AppRoutes.generateRoute,
      ),
    );
  }
}
