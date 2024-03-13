import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainController extends ChangeNotifier {
  int _indexPage = 0;
  int get indexPage => _indexPage;

  bool _showExitButton = false;
  bool get showExitButton => _showExitButton;

  final pageController = PageController();

  Future<void> onBottomBarItemTapped(int index, AnimationController controller) async {
    _indexPage = index;

    _verifyPageIndex(index);
    exibirAppBar(controller);

    notifyListeners();
  }

  void _verifyPageIndex(int index) {
    _showExitButton = index == 2;
  }

  Future<void> exibirAppBar(AnimationController controller) async {
    if (indexPage == 0 || indexPage == 1) {
      if (indexPage == 1 && controller.isDismissed) {
        return;
      }

      controller.forward();
      await Future.delayed(const Duration(seconds: 3));
      controller.reverse();
    }
    else {
      if (controller.isDismissed) {
        controller.forward();
      }
    }
  }
}
