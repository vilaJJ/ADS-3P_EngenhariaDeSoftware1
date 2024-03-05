import 'package:prints/src/shared/models/account/account_model.dart';
import 'package:prints/src/shared/widgets/post/models/post_model.dart';

class PostsRepository {
  final _users = <AccountModel>[
    AccountModel(
      imageProfilePath: 'assets/users/old_kanye.jpg',
      username: 'old_kanye',
    ),
    AccountModel(
      imageProfilePath: 'assets/users/metro_boomin.jpg',
      username: 'metro_boomin',
    ),
    AccountModel(
      imageProfilePath: 'assets/users/flamengo.jpg',
      username: 'flamengo',
    ),
    AccountModel(
      imageProfilePath: 'assets/users/obanai_iguro.jpg',
      username: 'obanai_iguro',
    ),
    AccountModel(
      imageProfilePath: 'assets/users/twice.jpg',
      username: 'twice',
    )
  ];

  late final List<PostModel> _posts;

  PostsRepository() {
    _posts = [
      PostModel(
        account: _users[0],
        imagePath: 'assets/feed/late_registration.jpg',
        downloadsCount: 1598361,
      ),
      PostModel(
        account: _users[1],
        imagePath: 'assets/feed/wish_you_were_here.jpg',
        downloadsCount: 912694,
      ),
      PostModel(
        account: _users[2],
        imagePath: 'assets/feed/flamengo_libertadores.jpg',
        downloadsCount: 10569831,
      ),
      PostModel(
        account: _users[3],
        imagePath: 'assets/feed/obanai_iguro.jpg',
        downloadsCount: 56982,
      ),
      PostModel(
        account: _users[4],
        imagePath: 'assets/feed/twice.png',
        downloadsCount: 6598741,
      )
    ];
  }

  Future<List<PostModel>> getPosts() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    return _posts;
  }
}
