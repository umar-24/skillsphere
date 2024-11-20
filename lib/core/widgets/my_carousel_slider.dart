// ignore_for_file: unused_local_variable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:skillsphere/core/constants/colors.dart';
import 'package:skillsphere/core/constants/images.dart';

class MyCarouselSlider extends StatefulWidget {
  const MyCarouselSlider({super.key});

  @override
  State<MyCarouselSlider> createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider> {
  final List<String> imageList = [
   thumbnail1,
   thumbnail2,
   thumbnail3,
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        CarouselSlider(
          items: imageList.map((item) => Container(
            // margin: const EdgeInsets.symmetric(horizontal: 8.0), // Space between images
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(item),
                fit: BoxFit.fill,
              ),
            ),
          )).toList(),
          options: CarouselOptions(
            autoPlay: true,
            height: screenHeight * 0.23, // Adjust height relative to screen size
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            viewportFraction: 0.9, // Controls width of displayed image (adjust for spacing)
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _currentIndex = entry.key,
              child: Container(
                width: 8.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == entry.key
                      ? AppColors.darkBlue // Active dot color
                      : Colors.grey, // Inactive dot color
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
