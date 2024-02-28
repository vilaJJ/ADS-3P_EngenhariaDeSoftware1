import 'package:flutter/material.dart';
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
      providers: const[

        ],
        child: MaterialApp(
          title: "Prints",
          theme: ThemeData.dark(useMaterial3: true),
          initialRoute: '/'
        ),
      );
  }
}