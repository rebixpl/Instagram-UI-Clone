import 'package:flutter/material.dart';

class AddPostPage extends StatefulWidget {
  static const routeName = '/add_post_page';

  const AddPostPage({super.key});

  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Add Post'),
    );
  }
}
