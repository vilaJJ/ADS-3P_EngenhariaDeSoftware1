import 'package:flutter/material.dart';
import 'package:prints/src/shared/device/screen_size.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical: ScreenSize(context).height(percentual: 0.125)),
        child: Image(
          image: const AssetImage("assets/images/app_icon.png"),
          fit: BoxFit.cover,
          width: ScreenSize(context).width(percentual: 0.25),
        ));
  }
}
