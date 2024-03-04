import 'package:flutter/material.dart';

class SplashController extends ChangeNotifier {
  bool finalizado = false;
  bool textVisible = false;
  double progressOpacity = 0;

  Future<void> startSplashPage() async {
    await Future.delayed(const Duration(seconds: 1));

    textVisible = true;
    notifyListeners();

    await _startProgressOpacity();
    _finalizar();
  }

  Future<void> _startProgressOpacity() async {
    await Future.delayed(const Duration(milliseconds: 500));

    progressOpacity = 1;
    notifyListeners();
  }

  Future<void> _finalizar() async {
    await Future.delayed(const Duration(seconds: 2));

    finalizado = true;
    notifyListeners();
  }
}
