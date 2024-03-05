import 'package:flutter/material.dart';
import 'package:prints/src/shared/device/screen_size.dart';
import 'package:prints/src/shared/widgets/post/models/post_model.dart';

class BottomPostComponent extends StatelessWidget {
  final PostModel post;

  const BottomPostComponent({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize(context).width(),
      height: ScreenSize(context).height(
        percentual: 0.05,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenSize(context).width(percentual: 0.025),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.file_download_done_rounded,
                  color: Colors.white38,
                ),
                Text('${post.downloadsCount}'),
              ],
            ),
            IconButton(
              color: Colors.purple,
              onPressed: () {},
              icon: const Icon(Icons.file_download_rounded),
            )
          ],
        ),
      ),
    );
  }
}
