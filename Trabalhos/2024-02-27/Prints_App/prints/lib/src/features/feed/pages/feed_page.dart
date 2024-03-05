import 'package:flutter/material.dart';
import 'package:prints/src/features/feed/controllers/feed_controller.dart';
import 'package:prints/src/shared/widgets/post/models/post_model.dart';
import 'package:prints/src/shared/widgets/post/post_widget.dart';
import 'package:prints/src/shared/widgets/progress_indicator/circle_progress_indicator.dart';
import 'package:provider/provider.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FeedController>(builder: (context, controller, child) {
      return FutureBuilder<List<PostModel>>(
        future: controller.getPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircleProgressIndicator());
          }
          if (snapshot.hasError) {
            return const Center(child: Text("Erro ao obter os Posts."));
          }

          var posts = snapshot.requireData;

          if (posts.isEmpty) {
            return const Center(child: Text("Sem postagens por hoje :)"));
          }

          return ListView.separated(
            separatorBuilder: (context, index) => const Divider(
              height: 25,
              thickness: 0,
              color: Colors.transparent,
            ),
            itemCount: posts.length,
            itemBuilder: (context, index) => PostWidget(
              post: posts[index],
            ),
          );
        },
      );
    });
  }
}
