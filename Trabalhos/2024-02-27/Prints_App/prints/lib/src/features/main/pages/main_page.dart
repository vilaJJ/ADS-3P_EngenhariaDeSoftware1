import 'package:flutter/material.dart';
import 'package:prints/src/features/main/controllers/main_controller.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MainController>(builder: (context, controller, child) {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple.shade700,
            centerTitle: true,
            title: const Text("Prints",
                style: TextStyle(fontWeight: FontWeight.bold)),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.exit_to_app, color: Colors.white))
            ],
          ),
          body: null,
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            onTap: controller.onBottomBarItemTapped,
            backgroundColor: Colors.deepPurple,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Feed'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_photo_alternate_rounded), label: 'Novo'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_sharp), label: 'Conta'),
            ],
          ));
    });
  }
}
