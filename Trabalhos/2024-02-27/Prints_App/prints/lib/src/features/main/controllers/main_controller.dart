import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainController extends ChangeNotifier {
  int _indexPage = 0;
  int get indexPage => _indexPage;

  bool _showExitButton = false;
  bool get showExitButton => _showExitButton;

  final pageController = PageController();

  void onBottomBarItemTapped(int index) {
    _indexPage = index;

    _verifyPageIndex(index);

    notifyListeners();
  }

  void _verifyPageIndex(int index) {
    _showExitButton = index == 2;
  }
}
