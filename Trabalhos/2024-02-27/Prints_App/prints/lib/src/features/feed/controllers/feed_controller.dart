import 'package:flutter/material.dart';
import 'package:prints/src/shared/repositories/posts/posts_repository.dart';
import 'package:prints/src/shared/widgets/post/models/post_model.dart';

class FeedController extends ChangeNotifier {
  final _postRepository = PostsRepository();

  Future<List<PostModel>> getPosts() async {
    return _postRepository.getPosts();
  }
}
