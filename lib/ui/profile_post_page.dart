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
      mainAxisSpacing: 1.6,
      crossAxisSpacing: 1.6,
      children: users[0]
          .postsList
          .map(
            (post) => Stack(
              children: [
                CachedNetworkImage(
                  imageUrl: post.imageUrl,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                post.isReel && !post.isCarousel
                    ? Positioned(
                        right: 8.0,
                        top: 8.0,
                        child: ColorFiltered(
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcATop,
                          ),
                          child: Image.asset(
                            'assets/icons/reels_solid.png',
                            width: 18.0,
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
                post.isCarousel && !post.isReel
                    ? Positioned(
                        right: 8.0,
                        top: 8.0,
                        child: ColorFiltered(
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcATop,
                          ),
                          child: Image.asset(
                            'assets/icons/carousel_solid.png',
                            width: 18.0,
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          )
          .toList(),
    );
  }
}
