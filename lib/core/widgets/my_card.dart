import 'package:flutter/material.dart';
import 'package:skillsphere/core/constants/colors.dart';
class MyCard extends StatelessWidget {
  final String imagePath, title, description;
  
  const MyCard({super.key, required this.imagePath, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    // Get screen size for responsive design
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 1, // Set card width to 40% of screen width
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 4,
        // margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                 imagePath, // Replace with your image asset path
                  width: screenWidth * 1,
                  height: screenWidth * 0.5, // Responsive height
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(

                  fontSize: screenWidth * 0.04, // Responsive text size
                  
                ),
              ),
              // const SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(
                  fontSize: screenWidth * 0.03, // Responsive text size
                  color: Colors.grey
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Icon(Icons.star_half, color: Colors.orange, size: 16),
                      Icon(Icons.star_outline, color: Colors.orange, size: 16),
                    ],
                  ),
                  SizedBox(
                    width: screenWidth*0.4,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.darkBlue, // Dark blue color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                      ),
                      child: Text(
                        'Enroll',
                        style: TextStyle(
                          fontSize: screenWidth * 0.04, // Responsive text size
                          color: AppColors.white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
