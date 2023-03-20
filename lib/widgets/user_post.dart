import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone_ui/dummy_data/dummy_comments.dart';
import 'package:instagram_clone_ui/dummy_data/dummy_data.dart';
import 'package:instagram_clone_ui/model/user_model.dart';
import 'package:instagram_clone_ui/widgets/post_item.dart';
import 'package:intl/intl.dart' as intl;

class UserPost extends StatefulWidget {
  final UserModel user;

  const UserPost({
    super.key,
    required this.user,
  });

  @override
  State<UserPost> createState() => _UserPostState();
}

class _UserPostState extends State<UserPost> {
  @override
  Widget build(BuildContext context) {
    UserModel user = widget.user;

    String randomDateText() {
      switch (Random().nextInt(4)) {
        case 0:
          return '${Random().nextInt(7) + 2} days ago';
        case 1:
          return '${Random().nextInt(24) + 1} hours ago';
        case 2:
          return '1 day ago';
        default:
          return "1 minute ago";
      }
    }

    String randomCommentText() {
      return dummyComments[Random().nextInt(dummyComments.length)];
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Colors.yellow,
                            Colors.orange,
                            Colors.red,
                            Colors.purple,
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                      ),
                      child: CachedNetworkImage(
                        imageUrl: user.imageUrl,
                        imageBuilder: (context, imageProvider) => CircleAvatar(
                          radius: 20,
                          backgroundImage: imageProvider,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      width: 260.0,
                      child: Text(
                        user.name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        textAlign: TextAlign.start,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.more_horiz_outlined,
                  size: 25,
                ),
              ],
            ),
          ),
          SizedBox(
            // height: 300,
            width: double.infinity,
            child: PostItem(
              user: user,
              isFeed: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_outline),
                      iconSize: 30,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/icons/comments.svg'),
                      iconSize: 30,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/icons/share_post.svg'),
                      iconSize: 30,
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_border),
                  iconSize: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 10,
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                  ),
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: Text.rich(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    TextSpan(
                      children: [
                        const TextSpan(text: 'Liked by'),
                        const WidgetSpan(
                          child: SizedBox(width: 4),
                        ),
                        TextSpan(
                          text: users[Random().nextInt(users.length)].username,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const WidgetSpan(
                          child: SizedBox(width: 4),
                        ),
                        const TextSpan(text: 'and'),
                        const WidgetSpan(
                          child: SizedBox(width: 4),
                        ),
                        TextSpan(
                          text:
                              '${intl.NumberFormat.decimalPattern().format(user.postsList.first.likesAmount)} others',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Expanded(
              child: Text.rich(
                maxLines: 3,
                style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                ),
                textAlign: TextAlign.start,
                TextSpan(
                  children: [
                    TextSpan(
                      text: user.username,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const WidgetSpan(
                      child: SizedBox(width: 4),
                    ),
                    TextSpan(
                      text: user.postsList.first.caption,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'View all ${intl.NumberFormat.decimalPattern().format(user.postsList.first.commentsAmount)} comments',
              style: const TextStyle(color: Color.fromARGB(255, 123, 123, 123)),
            ),
          ),
          Container(
            height: 35,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text.rich(
                    style: const TextStyle(overflow: TextOverflow.ellipsis),
                    textAlign: TextAlign.start,
                    TextSpan(
                      children: [
                        TextSpan(
                          text: users[Random().nextInt(users.length)].username,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const WidgetSpan(
                          child: SizedBox(width: 4),
                        ),
                        TextSpan(
                          text: randomCommentText(),
                          style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border_outlined,
                    size: 15,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: randomDateText(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13.0,
                      color: Color.fromARGB(255, 132, 132, 132),
                    ),
                  ),
                  // const WidgetSpan(
                  //   child: SizedBox(width: 6),
                  // ),
                  // const WidgetSpan(
                  //   alignment: PlaceholderAlignment.middle,
                  //   child: Icon(
                  //     Icons.circle,
                  //     size: 5,
                  //   ),
                  // ),
                  // const WidgetSpan(
                  //   child: SizedBox(width: 6),
                  // ),
                  // const TextSpan(
                  //   text: 'See translation',
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
