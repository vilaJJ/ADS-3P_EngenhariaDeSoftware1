import 'package:flutter/material.dart';
import 'package:prints/src/features/main/controllers/main_controller.dart';
import 'package:prints/src/features/main/pages/main_page.dart';
import 'package:prints/src/features/splash/controllers/splash_controller.dart';
import 'package:prints/src/features/splash/pages/splash_page.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SplashController()),
        ChangeNotifierProvider(create: (context) => MainController())
      ],
      child: MaterialApp(
        title: "Prints",
        theme: ThemeData.dark(useMaterial3: true),
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashPage(),
          '/main': (context) => const MainPage()
        },
      ),
    );
  }
}
