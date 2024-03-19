import 'package:flutter/material.dart';
import 'package:prints/src/shared/device/screen_size.dart';
import 'package:prints/src/shared/models/account/account_model.dart';
import 'package:prints/src/shared/widgets/post/models/post_model.dart';
import 'package:prints/src/shared/widgets/post/post_widget.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  late final List<PostModel> posts;

  @override
  void initState() {
    super.initState();

    var conta = AccountModel(
      imageProfilePath: 'assets/users/old_kanye.jpg',
      username: 'ty_dolla_sign',
    );
    var imagePath = "assets/feed/wish_you_were_here.jpg";

    posts = [];

    for (var i = 0; i < 100; i++) {
      posts.add(PostModel(account: conta, imagePath: imagePath));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            ListTile(
              isThreeLine: true,
              titleAlignment: ListTileTitleAlignment.center,
              title: const Text(
                "ty_dolla_sign",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold
                )
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: ScreenSize(context).width(percentual: 0.3),
                    child: Column(
                      children: [
                        const Text("561 dias", style: TextStyle(color: Colors.black),),
                        Icon(Icons.cake_rounded, color: Colors.purple.shade900,)
                      ],
                    ),
                  ),

                  // Número de postagens
                  SizedBox(
                    width: ScreenSize(context).width(percentual: 0.3),
                    child: Column(
                      children: [
                        const Text("98 posts", style: TextStyle(color: Colors.black),),
                        Icon(Icons.photo_rounded, color: Colors.purple.shade900)
                      ],
                    ),
                  ),

                  // Número de downloads feitos nas postagens do usuário,
                  SizedBox(
                    width: ScreenSize(context).width(percentual: 0.3),
                    child: Column(
                      children: [
                        const Text("5621 downloads", style: TextStyle(color: Colors.black),),
                        Icon(Icons.download_rounded, color: Colors.purple.shade900)
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const Divider(height: 0, color: Colors.black26),

            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: posts.length,
                itemBuilder: (context, index) => PostWidget(
                  post: posts[index],
                  showFooter: false,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
