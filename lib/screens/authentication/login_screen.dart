// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:skillsphere/core/constants/colors.dart';
import 'package:skillsphere/core/constants/images.dart';
import 'package:skillsphere/core/widgets/my_textfeild.dart';
import 'package:skillsphere/core/widgets/rounded_button.dart';
import 'package:skillsphere/screens/home_screen.dart';
import 'package:skillsphere/screens/navBar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final viewInsets = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight:
                  screenHeight - viewInsets, // Minimum height respects keyboard
            ),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      height: screenHeight *
                          0.3, // Adjust height based on screen size
                      width: double.infinity,
                      child: Lottie.asset(loginAnimation),
                    ),
                  ),
                  const Text(
                    "Welcome Back to \nSkillSphere!",
                    style: TextStyle(
                        color: AppColors.darkBlue,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Sign in to continue your learning, track progress, and explore new courses. Let’s get started!",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Form(
                    child: Column(
                      children: [
                        MyTextFeild(
                          hintText: "Email",
                          obscureText: false,
                          leading: Icon(Iconsax.direct_right),
                        ),
                        const SizedBox(height: 10),
                        const MyTextFeild(
                          hintText: "Password",
                          obscureText: true,
                          leading: Icon(Iconsax.lock_1),
                          trailing: Icon(Iconsax.eye),
                        ),
                        Row(
                          children: [
                            Spacer(),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/forgot');
                              },
                              child: const Text(
                                "Forgot Password?",
                                style: TextStyle(color: AppColors.darkBlue),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  RoundedButton(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Navbar()));
                    },
                    title: "Login",
                    color: AppColors.darkBlue,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account! ",
                        style: TextStyle(color: AppColors.darkBlue),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/register");
                        },
                        child: Text(
                          "Register Now",
                          style: TextStyle(
                              color: AppColors.darkBlue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
