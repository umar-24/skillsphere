import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:skillsphere/core/constants/colors.dart';
import 'package:skillsphere/screens/course_screen.dart';
import 'package:skillsphere/screens/home_screen.dart';
import 'package:skillsphere/screens/profile_screen.dart';
import 'package:skillsphere/screens/tracking_screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    CourseScreen(),
    TrackingScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Getting screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    // Adjust padding and icon size based on screen width
    final double paddingHorizontal = screenWidth * 0.08;
    final double paddingVertical = screenHeight * 0.03;
    final double iconSize = screenWidth * 0.06;

    return Scaffold(
      backgroundColor: AppColors.offWhite,
      body: Stack(
        children: [
          // Main content
          _pages[_selectedIndex],

          // Floating navigation bar
          Positioned(
            left: paddingHorizontal,
            right: paddingHorizontal,
            bottom: screenHeight * 0.02, // Adjust based on screen height
            child: Container(
              padding: EdgeInsets.all(screenWidth * 0.02), // Adjust padding dynamically
              decoration: BoxDecoration(
                color: AppColors.darkBlue,
                borderRadius: BorderRadius.circular(100),
              ),
              child: GNav(
                onTabChange: _onItemTapped,
                activeColor: AppColors.darkBlue,
                tabBackgroundColor: Colors.white,
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.03,
                  vertical: screenHeight * 0.015,
                ), // Dynamic padding for GNav buttons
                tabs: [
                  GButton(
                    icon: Iconsax.home,
                    iconSize: iconSize,
                  ),
                  GButton(
                    icon: Iconsax.category,
                    iconSize: iconSize,
                  ),
                  GButton(
                    icon: Iconsax.diagram,
                    iconSize: iconSize,
                  ),
                  GButton(
                    icon: Iconsax.user4,
                    iconSize: iconSize,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:skillsphere/core/constants/colors.dart';
// import 'package:skillsphere/screens/course_screen.dart';
// import 'package:skillsphere/screens/home_screen.dart';
// import 'package:skillsphere/screens/profile_screen.dart';
// import 'package:skillsphere/screens/tracking_screen.dart';

// class Navbar extends StatefulWidget {
//   const Navbar({super.key});

//   @override
//   State<Navbar> createState() => _NavbarState();
// }

// class _NavbarState extends State<Navbar> {
//   int _selectedIndex = 0;
//   final List<Widget> _pages = [
//     HomeScreen(),
//     CourseScreen(),
//     TrackingScreen(),
//     ProfileScreen(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Getting screen dimensions
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;

//     // Adjust padding and icon size based on screen width
//     final double paddingHorizontal = screenWidth * 0.08;
//     final double paddingVertical = screenHeight * 0.03;
//     final double iconSize = screenWidth * 0.06;

//     return Scaffold(
//       backgroundColor: AppColors.offWhite,
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: Padding(
//         padding: EdgeInsets.symmetric(
//           horizontal: paddingHorizontal,
//           vertical: paddingVertical,
//         ),
//         child: Container(
//           padding: EdgeInsets.all(screenWidth * 0.02), // Adjust padding dynamically
//           decoration: BoxDecoration(
//             color: AppColors.darkBlue,
//             borderRadius: BorderRadius.circular(100),
//           ),
//           child: GNav(
//             onTabChange: _onItemTapped,
//             activeColor: AppColors.darkBlue,
//             tabBackgroundColor: Colors.white,
//             color: Colors.white,
//             padding: EdgeInsets.symmetric(
//               horizontal: screenWidth * 0.03,
//               vertical: screenHeight * 0.015,
//             ), // Dynamic padding for GNav buttons
//             tabs: [
//               GButton(
//                 icon: Iconsax.home,
//                 iconSize: iconSize,
//               ),
//               GButton(
//                 icon: Iconsax.category,
//                 iconSize: iconSize,
//               ),
//               GButton(
//                 icon: Iconsax.diagram,
//                 iconSize: iconSize,
//               ),
//               GButton(
//                 icon: Iconsax.user4,
//                 iconSize: iconSize,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }