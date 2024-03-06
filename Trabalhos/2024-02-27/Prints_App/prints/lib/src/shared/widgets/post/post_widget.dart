import 'package:flutter/material.dart';
import 'package:prints/src/shared/device/screen_size.dart';
import 'package:prints/src/shared/widgets/post/components/bottom_post_component.dart';
import 'package:prints/src/shared/widgets/post/components/image_post_component.dart';
import 'package:prints/src/shared/widgets/post/controllers/post_controller.dart';
import 'package:prints/src/shared/widgets/post/models/post_model.dart';
import 'package:provider/provider.dart';

class PostWidget extends StatelessWidget {
  final PostModel post;

  const PostWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Consumer<PostController>(builder: (context, controller, child) {
      return SizedBox(
        width: ScreenSize(context).width(),
        height: ScreenSize(context).height(percentual: 0.5),
        child: Column(
          children: [
            // 45% de 50%
            ImagePostComponent(post: post),

            // 5% de 50%
            BottomPostComponent(post: post)
          ],
        ),
      );
    });
  }
}
