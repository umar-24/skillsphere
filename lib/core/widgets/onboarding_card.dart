import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:skillsphere/core/constants/colors.dart';

class OnboardingCard extends StatelessWidget {
  final String animation, title, description;
  final PageController pageController;
  final VoidCallback onNext;
  final VoidCallback onSkip;
  final bool isLastPage;  // Check if it's the last page

  const OnboardingCard({
    super.key,
    required this.animation,
    required this.title,
    required this.description,
    required this.pageController,
    required this.onNext,
    required this.onSkip,
    required this.isLastPage,  // Pass isLastPage
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 0.80,
      child: Stack(
        children: [
          // Main content of the onboarding card
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(50),
                child: Lottie.asset(animation, fit: BoxFit.contain),
              ),
              Column(
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: AppColors.darkBlue,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  // Add a button below the description
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: onNext,
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: AppColors.darkBlue, // Button color
                        ),
                        child: Text(
                          isLastPage ? "Get Started" : "Next", // Change text on last page
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          // Skip button positioned at top-right corner
          if (!isLastPage) // Show Skip button only if it's not the last page
            Positioned(
              right: 16,
              top: 15,
              child: TextButton(
                onPressed: onSkip,
                child: const Text(
                  "Skip",
                  style: TextStyle(
                    color: AppColors.darkBlue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
