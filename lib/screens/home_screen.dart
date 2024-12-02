import 'package:flutter/material.dart';
import 'package:skillsphere/core/constants/colors.dart';
import 'package:skillsphere/core/constants/images.dart';
import 'package:skillsphere/core/widgets/my_card.dart';
import 'package:skillsphere/core/widgets/my_carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Row(
          children: [
            CircleAvatar(
              foregroundImage: AssetImage(image1), radius: 20,
            ),
            SizedBox(width: 10,),
            Text("Umar Farooq", style: TextStyle(fontSize: 16),)
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom: 100, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyCarouselSlider(),

              // Courses Showing
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Our Courses",
                  style: TextStyle(color: AppColors.darkBlue, fontSize: 22),
                ),
              ),
              
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MyCard(
                      
                      title: "Mobile App Development with FLutter",
                      description: "A short description",
                      imagePath: thumbnail1,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    MyCard(
                      title: "Website  Development with Python",
                      description: "A short description",
                      imagePath: thumbnail2,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    MyCard(
                      title: "Website  Development with .Net",
                      description: "A short description",
                      imagePath: thumbnail3,
                    ),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MyCard(
                      title: "Mobile App Development with FLutter",
                      description: "A short description",
                      imagePath: thumbnail1,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    MyCard(
                      title: "Website  Development with Python",
                      description: "A short description",
                      imagePath: thumbnail2,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    MyCard(
                      title: "Website  Development with .Net",
                      description: "A short description",
                      imagePath: thumbnail3,
                    ),
                  ],
                ),
              ),

              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 20),
              //   child: Text(
              //     "Our Teachers",
              //     style: TextStyle(color: AppColors.darkBlue, fontSize: 22),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
