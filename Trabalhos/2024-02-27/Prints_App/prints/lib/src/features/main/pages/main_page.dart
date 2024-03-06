import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prints/src/features/account/pages/account_page.dart';
import 'package:prints/src/features/feed/pages/feed_page.dart';
import 'package:prints/src/features/main/controllers/main_controller.dart';
import 'package:prints/src/features/new_post/pages/new_post_page.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  late final AnimationController _appBarAnimationController;

  @override
  void initState() {
    super.initState();
    _appBarAnimationController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _appBarAnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MainController>(builder: (context, controller, child) {
      return Scaffold(
          appBar: AppBar(            
            backgroundColor: Theme.of(context).primaryColor,
            centerTitle: true,
            title: const Text("Prints",
                style: TextStyle(fontWeight: FontWeight.bold)),
            actions: [
              Visibility(
                visible: controller.showExitButton,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.exit_to_app, color: Colors.white)),
              )
            ],
          ),
          body: SafeArea(
            child: Builder(
              builder: (context) {
                switch (controller.indexPage) {
                  case 0:
                    return const FeedPage();
                  case 1:
                    return const NewPostPage();
                  default:
                    return const AccountPage();
                }
            }),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.indexPage,
            unselectedItemColor: Colors.grey,
            onTap: controller.onBottomBarItemTapped,
            backgroundColor: Theme.of(context).primaryColor,
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
