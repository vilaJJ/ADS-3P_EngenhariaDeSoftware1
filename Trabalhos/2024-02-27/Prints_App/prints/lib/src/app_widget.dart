import 'package:flutter/material.dart';
import 'package:prints/src/features/feed/controllers/feed_controller.dart';
import 'package:prints/src/features/main/controllers/main_controller.dart';
import 'package:prints/src/features/main/pages/main_page.dart';
import 'package:prints/src/features/splash/controllers/splash_controller.dart';
import 'package:prints/src/features/splash/pages/splash_page.dart';
import 'package:prints/src/shared/widgets/post/controllers/post_controller.dart';
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
        ChangeNotifierProvider(create: (context) => MainController()),
        ChangeNotifierProvider(create: (context) => FeedController()),
        ChangeNotifierProvider(create: (context) => PostController())
      ],
      child: MaterialApp(
        title: "Prints",
        theme: ThemeData.dark(
          useMaterial3: true
          ).copyWith(
            primaryColor: const Color.fromRGBO(150, 42, 255, 100)
            ),
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashPage(),
          '/main': (context) => const MainPage()
        },
      ),
    );
  }
}
