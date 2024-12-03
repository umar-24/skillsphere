import 'package:flutter/material.dart';
import 'package:skillsphere/core/constants/colors.dart';

class ProgressTracker extends StatelessWidget {
  final double progress; // value between 0.0 to 1.0

  const ProgressTracker({Key? key, required this.progress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Progress",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(
          value: progress,
          backgroundColor: Colors.grey[300],
          color: AppColors.darkBlue,
        ),
        const SizedBox(height: 4),
        Text("${(progress * 100).toInt()}% Completed"),
      ],
    );
  }
}
