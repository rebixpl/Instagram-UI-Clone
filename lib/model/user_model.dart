import 'package:instagram_clone_ui/model/post_model.dart';

class UserModel {
  final String? username;
  final String imageUrl;
  final String name;
  final List<PostModel> postsList;
  final int followersAmount;
  final int followingAmount;

  UserModel({
    required this.followersAmount,
    required this.followingAmount,
    required this.username,
    required this.imageUrl,
    required this.name,
    required this.postsList,
  });
}
