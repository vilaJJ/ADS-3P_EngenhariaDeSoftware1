import 'package:flutter/material.dart';
import 'package:prints/src/shared/device/screen_size.dart';
import 'package:prints/src/shared/widgets/post/models/post_model.dart';

class ImagePostComponent extends StatelessWidget {
  final PostModel post;

  const ImagePostComponent({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize(context).width(),
      height: ScreenSize(context).height(percentual: 0.4),
      child: Image.asset(
        post.imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
