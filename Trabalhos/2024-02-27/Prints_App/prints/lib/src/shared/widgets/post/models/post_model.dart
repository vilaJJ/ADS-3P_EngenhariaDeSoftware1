import 'package:prints/src/shared/models/account/account_model.dart';

class PostModel {
  final AccountModel account;
  final String imagePath;
  final int downloadsCount;

  PostModel({
    required this.account,
    required this.imagePath,
    this.downloadsCount = 0,
  });
}
