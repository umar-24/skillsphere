import 'package:flutter/material.dart';
import 'package:skillsphere/core/constants/colors.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final bool loading;
  final Color? color;
  const RoundedButton(
      {super.key,
      required this.title,
      this.onTap,
      this.loading = false,
      this.color = AppColors.darkBlue});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: loading
                ? CircularProgressIndicator(
                    strokeWidth: 3,
                    color: Colors.white,
                  )
                : Text(
                    title,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
      ),
    );
  }
}
