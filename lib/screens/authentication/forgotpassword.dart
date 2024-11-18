import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:skillsphere/core/constants/colors.dart';
import 'package:skillsphere/core/constants/images.dart';
import 'package:skillsphere/core/widgets/my_textfeild.dart';
import 'package:skillsphere/core/widgets/rounded_button.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Container(
                  height: 200,
                  width: double.infinity,
                  child: Lottie.asset(forgotpasswordAnimation)),
            ),
            const Text(
              "Forgot Password?",
              style: TextStyle(
                  color: AppColors.darkBlue,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
             const SizedBox(
              height: 10,
            ),
            Text(
              "Reset your password to continue your learning journey.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 14,
              ),
            ),
             const SizedBox(
              height: 20,
            ),
            const MyTextFeild(
                leading: Icon(Iconsax.direct_right),
                hintText: "Enter your email",
                obscureText: false),
            const SizedBox(
              height: 20,
            ),
            const RoundedButton(
              title: "Reset Password",
            )
          ],
        ),
      ),
    );
  }
}
