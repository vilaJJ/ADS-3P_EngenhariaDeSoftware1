// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:prints/src/features/splash/controllers/splash_controller.dart';
import 'package:prints/src/shared/widgets/app_logo/app_logo.dart';
import 'package:prints/src/shared/device/screen_size.dart';
import 'package:prints/src/shared/widgets/progress_indicator/circle_progress_indicator.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _aguardarInicio();
  }

  Future<void> _aguardarInicio() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, "/main");
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SplashController>(builder: (context, controller, child) {
      controller.startSplashPage();

      return Scaffold(
        backgroundColor: const Color.fromARGB(100, 90, 24, 154),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AppLogo(),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: ScreenSize(context).height(percentual: 0.025)),
                child: AnimatedSize(
                  curve: Curves.easeIn,
                  duration: const Duration(milliseconds: 500),
                  child: Visibility(
                    visible: controller.textVisible,
                    child: const Text(
                      "Bem-vindo ao Prints",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              AnimatedOpacity(
                  opacity: controller.progressOpacity,
                  duration: const Duration(milliseconds: 500),
                  child: const CircleProgressIndicator())
            ],
          ),
        ),
      );
    });
  }
}
