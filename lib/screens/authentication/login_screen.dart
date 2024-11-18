import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:skillsphere/core/constants/colors.dart';
import 'package:skillsphere/core/constants/images.dart';
import 'package:skillsphere/core/widgets/my_textfeild.dart';
import 'package:skillsphere/core/widgets/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Container(
                    height: 300,
                    width: double.infinity,
                    child: Lottie.asset(loginAnimation)),
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
              const SizedBox(
                height: 10,
              ),
              Form(
                  child: Column(
                children: [
                   MyTextFeild(
                    hintText: "Email",
                    obscureText: false,
                    leading: Icon(Iconsax.direct_right)
                  ),
                  const SizedBox(
                    height: 10,
                  ),
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
                          )),
                    ],
                  )
                ],
              )),
              const RoundedButton(
                title: "Login",
                color: AppColors.darkBlue,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account! ",
                    style: TextStyle(color: AppColors.darkBlue),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Register Now",
                        style: TextStyle(
                            color: AppColors.darkBlue,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
