import 'package:flutter/material.dart';
import 'package:prints/src/shared/device/screen_size.dart';
import 'package:prints/src/shared/widgets/post/models/post_model.dart';

class AccountPostHeaderComponent extends StatelessWidget {
  final PostModel post;

  const AccountPostHeaderComponent({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize(context).height(percentual: 0.05),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenSize(context).width(
            percentual: 0.025,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: CircleAvatar(
                      radius: 12.5,
                      backgroundImage: AssetImage(
                        post.account.imageProfilePath,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: ScreenSize(context).width(
                      percentual: 0.025,
                    ),
                  ),
                  child: Text(post.account.username),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz_outlined),
            )
          ],
        ),
      ),
    );
  }
}
