import 'package:flutter/material.dart';
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
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  );
  
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MainController>(builder: (context, controller, child) {
      controller.exibirAppBar(_controller);

      return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizeTransition(
                sizeFactor: _animation,
                child: SizedBox(
                  height: 56,
                  child: AppBar(            
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
                ),
              ),

              Expanded(
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
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.indexPage,
          unselectedItemColor: Colors.grey,
          onTap: (index) => controller.onBottomBarItemTapped(index, _controller),
          backgroundColor: Theme.of(context).primaryColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Feed'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_photo_alternate_rounded), label: 'Novo'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_sharp), label: 'Conta'),
          ],
        )
      );
    });
  }
}
