// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:skillsphere/core/constants/images.dart';
import 'package:skillsphere/core/widgets/%20progress_tracker.dart';
import 'package:skillsphere/core/widgets/custom_dropdown.dart';
import 'package:skillsphere/core/widgets/instructor_info.dart';
import 'package:skillsphere/core/widgets/youtube_video_player.dart';

class FlutterCourse extends StatefulWidget {
  const FlutterCourse({Key? key}) : super(key: key);

  @override
  State<FlutterCourse> createState() => _FlutterCourseState();
}

class _FlutterCourseState extends State<FlutterCourse> {
   final List<String> courseOutline = [
      "Introduction to Flutter",
      "Understanding Widgets",
      "State Management Basics",
      "Building Responsive UI",
      "Integrating APIs",
      "Debugging and Testing"
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Course"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Introduction to Flutter",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Videos(
                videoURL: "https://youtu.be/XTp5jaRU3Ws?si=QLCqOXTY1a333pS8",
              ),
              const SizedBox(height: 20),
              const Text(
                "Description:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const Text(
                "In this course, we will cover the basics of Flutter, "
                "a framework for building beautiful mobile applications.",
                style: TextStyle(fontSize: 14),
              ),
               const SizedBox(height: 20),
              InstructorInfo(name: "Umar Farooq", profileImage: image1, credentials: "Senior Flutter Developer"),
              const SizedBox(height: 20),
              CustomDropdown(
              title: "Course Outline",
              items: courseOutline,
            ),
             const SizedBox(height: 20),
             ProgressTracker(progress: 0.75)
            ],
          ),
        ),
      ),
    );
  }
}
