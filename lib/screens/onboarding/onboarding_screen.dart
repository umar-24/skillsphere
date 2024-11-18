// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import provider
import 'package:skillsphere/core/constants/colors.dart';
import 'package:skillsphere/core/constants/images.dart';
import 'package:skillsphere/core/widgets/onboarding_card.dart';
import 'package:skillsphere/provider/onBoarding_provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPageIndex = 0; // To track the current page index

  @override
  Widget build(BuildContext context) {
    final onboardingProvider = Provider.of<OnboardingProvider>(context);

    List<Widget> _onBoardingPages = [
      OnboardingCard(
        animation: animation1,
        title: "Welcome to Your Learning Journey!",
        description:
            "Explore a world of knowledge with interactive courses, engaging lessons, and personalized progress tracking.",
        pageController: _pageController,
        onNext: () {
          if (_currentPageIndex < 2) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          }
        },
        onSkip: () {
          _pageController.jumpToPage(2); // Skip to the last page
        },
        isLastPage: _currentPageIndex == 2, // Check if it's the last page
      ),
      OnboardingCard(
        animation: animation4,
        title: "Unlock Your Full Potential",
        description:
            "Start your educational journey with a wide range of courses designed to help you grow and succeed.",
        pageController: _pageController,
        onNext: () {
          if (_currentPageIndex < 2) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          }
        },
        onSkip: () {
          _pageController.jumpToPage(2); // Skip to the last page
        },
        isLastPage: _currentPageIndex == 2, // Check if it's the last page
      ),
      OnboardingCard(
        animation: animation3,
        title: "Your Path to Success Begins Here",
        description:
            "Explore a world of knowledge with interactive courses, engaging lessons, and personalized progress tracking.",
        pageController: _pageController,
        onNext: () {
          Navigator.pushReplacementNamed(context, '/login');
        },
        onSkip: () {
          _pageController.jumpToPage(2); // Skip to the last page
        },
        isLastPage: _currentPageIndex == 2, // Check if it's the last page
      ),
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPageIndex = index; // Update current page index
                  });
                },
                children: _onBoardingPages,
              ),
            ),
            SmoothPageIndicator(
              onDotClicked: (index){},
              controller: _pageController,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: AppColors.darkBlue
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}
