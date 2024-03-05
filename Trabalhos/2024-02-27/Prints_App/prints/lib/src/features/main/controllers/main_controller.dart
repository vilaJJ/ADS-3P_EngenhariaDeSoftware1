import 'package:flutter/material.dart';

class MainController extends ChangeNotifier {
  int _indexPage = 0;
  int get indexPage => _indexPage;

  final pageController = PageController();

  void onPageChanged(int index) {
    _indexPage = index;
    notifyListeners();
  }

  void onBottomBarItemTapped(int index) {
    _indexPage = index;

    pageController.animateToPage(
      _indexPage,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeInOut,
    );

    notifyListeners();
  }
}
