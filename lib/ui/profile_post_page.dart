import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/dummy_data/dummy_data.dart';

class ProfilePostPage extends StatefulWidget {
  const ProfilePostPage({super.key});

  @override
  State<ProfilePostPage> createState() => _ProfilePostPageState();
}

class _ProfilePostPageState extends State<ProfilePostPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.zero,
      crossAxisCount: 3,
      children: shopList
          .map(
            (imageUrl) => CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
            ),
          )
          .toList(),
    );
  }
}
