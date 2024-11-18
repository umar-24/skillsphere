// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

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
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  child: Lottie.asset(registerAnimation)),
              ),
              const Text(
                "Join SkillSphere Today!",
                style: TextStyle(
                    color: AppColors.darkBlue,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Create your account to access exclusive courses, track progress, and transform your learning journey.",
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
                  Row(
                    children: [
                      Expanded(child: MyTextFeild(hintText: "First Name", obscureText: false)),
                      const SizedBox(width: 10,),
                      Expanded(child: MyTextFeild(hintText: "Last Name", obscureText: false)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                   MyTextFeild(
                    hintText: "Email",
                    obscureText: false,
                    leading: Icon(Iconsax.direct_right)
                  ),
                   SizedBox(
                    height: 10,
                  ),
                   MyTextFeild(
                    hintText: "Password",
                    obscureText: true,
                    leading: Icon(Iconsax.lock_1),
                    trailing: Icon(Iconsax.eye),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                   MyTextFeild(
                    hintText: "Confirm Password",
                    obscureText: true,
                    leading: Icon(Iconsax.lock_1),
                    trailing: Icon(Iconsax.eye),
                  ),
                ],
              )),
              const SizedBox(
                height: 20,
              ),
              const RoundedButton(
                title: "Register",
                color: AppColors.darkBlue,
              ),
              const SizedBox(
                height: 10,
              ),
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