import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:skillsphere/core/constants/colors.dart';
import 'package:skillsphere/core/constants/images.dart';
import 'package:skillsphere/core/widgets/my_textfeild.dart';
import 'package:skillsphere/core/widgets/rounded_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    // Using MediaQuery to get screen size
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 500), // Optional constraint for larger screens
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02), // Responsive vertical padding
                  child: Container(
                    height: screenHeight * 0.3, // Adjust height based on screen size
                    width: double.infinity,
                    child: Lottie.asset(registerAnimation),
                  ),
                ),
                const Text(
                  "Join SkillSphere Today!",
                  style: TextStyle(
                      color: AppColors.darkBlue,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.01), // Responsive top padding
                  child: Text(
                    "Create your account to access exclusive courses, track progress, and transform your learning journey.",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02), // Responsive spacing
                Form(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: MyTextFeild(
                                hintText: "First Name", obscureText: false),
                          ),
                          SizedBox(width: screenWidth * 0.02), // Responsive spacing
                          Expanded(
                            child: MyTextFeild(
                                hintText: "Last Name", obscureText: false),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.02), // Responsive spacing
                      MyTextFeild(
                        hintText: "Email",
                        obscureText: false,
                        leading: Icon(Iconsax.direct_right),
                      ),
                      SizedBox(height: screenHeight * 0.02), // Responsive spacing
                      MyTextFeild(
                        hintText: "Password",
                        obscureText: true,
                        leading: Icon(Iconsax.lock_1),
                        trailing: Icon(Iconsax.eye),
                      ),
                      SizedBox(height: screenHeight * 0.02), // Responsive spacing
                      MyTextFeild(
                        hintText: "Confirm Password",
                        obscureText: true,
                        leading: Icon(Iconsax.lock_1),
                        trailing: Icon(Iconsax.eye),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.03), // Responsive spacing
                const RoundedButton(
                  title: "Register",
                  color: AppColors.darkBlue,
                ),
                SizedBox(height: screenHeight * 0.02), // Responsive spacing
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account! ",
                      style: TextStyle(color: AppColors.darkBlue),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        "Login Now",
                        style: TextStyle(
                            color: AppColors.darkBlue,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
