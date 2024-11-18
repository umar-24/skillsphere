// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:skillsphere/core/constants/images.dart';
import 'package:skillsphere/provider/splash_provider.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<SplashProvider>(context, listen: false).navigateToLogin(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Animate(
                effects: [
                  FadeEffect(duration: Duration(seconds: 1)),
                  MoveEffect()
                ],
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(appLogo),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Animate(effects: [
                FadeEffect(duration: Duration(seconds: 1)),
              ], child: Text('BUILD YOUR FUTURE WITH US')),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                child: LinearProgressIndicator(
                  color: Colors.grey.shade900,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
