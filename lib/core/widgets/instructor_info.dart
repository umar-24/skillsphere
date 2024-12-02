import 'package:flutter/material.dart';

class InstructorInfo extends StatelessWidget {
  final String name;
  final String profileImage;
  final String credentials;

  const InstructorInfo({
    Key? key,
    required this.name,
    required this.profileImage,
    required this.credentials,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(profileImage),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Text(
              credentials,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
