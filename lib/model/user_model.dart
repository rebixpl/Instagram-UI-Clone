class UserModel {
  final String? username;
  final String imageUrl;
  final String name;

  // Story attribute
  bool? isUser = false;

  UserModel({
    required this.username,
    required this.imageUrl,
    required this.name,
  });

  UserModel.story({
    required this.username,
    required this.imageUrl,
    required this.name,
    this.isUser,
  });
}
