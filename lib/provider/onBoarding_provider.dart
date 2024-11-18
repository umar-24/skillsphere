import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingProvider with ChangeNotifier {
  bool _isFirstLaunch = true;
  int _currentPageIndex = 0;  // Track the current page index

  bool get isFirstLaunch => _isFirstLaunch;
  int get currentPageIndex => _currentPageIndex;

  Future<void> checkIfFirstLaunch() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isFirstLaunch = prefs.getBool('isFirstLaunch') ?? true;
    notifyListeners();
  }

  Future<void> setOnboardingSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFirstLaunch', false);
    _isFirstLaunch = false;
    notifyListeners();
  }

  // Method to update the current page index
  void setCurrentPageIndex(int index) {
    _currentPageIndex = index;
    notifyListeners();
  }
}
