import 'package:instagram_clone_ui/model/post_model.dart';

class UserModel {
  final String? username;
  final String imageUrl;
  final String name;
  final List<PostModel> postsList;

  UserModel({
    required this.username,
    required this.imageUrl,
    required this.name,
    required this.postsList,
  });
}
