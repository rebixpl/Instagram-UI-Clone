import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/model/user_model.dart';
import 'package:instagram_clone_ui/widgets/reel_video.dart';

class PostItem extends StatelessWidget {
  final UserModel user;
  final bool isFeed;

  const PostItem({
    super.key,
    required this.user,
    this.isFeed = false,
  });

  @override
  Widget build(BuildContext context) {
    final post = user.postsList.first;
    // debugPrint(post.toString());

    // aspect ratio for search page
    const double searchPageAspectRatio = (1 / 1);

    // aspect ratio for feed page
    const List<double> feedPagePostAspectRatios = [(4 / 5), (1 / 1)];

    double randomAspectRatioForFeed() => feedPagePostAspectRatios[
        Random().nextInt(feedPagePostAspectRatios.length)];

    return Stack(
      children: [
        (post.isReel == true && post.isCarousel == true) ||
                (post.isReel == false && post.isCarousel == false) ||
                (post.isReel != true && post.isCarousel != false) ||
                (post.isReel == false && post.isCarousel == true)
            ? AspectRatio(
                aspectRatio:
                    isFeed ? randomAspectRatioForFeed() : searchPageAspectRatio,
                child: CachedNetworkImage(
                  imageUrl: post.imageUrl,
                  fit: BoxFit.cover,
                ),
              )
            : ClipRRect(
                child: AspectRatio(
                  aspectRatio: isFeed ? randomAspectRatioForFeed() : (1 / 2),
                  child: ReelVideo(videoLink: post.imageUrl),
                ),
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
    );
  }
}
