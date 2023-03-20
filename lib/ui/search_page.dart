import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_clone_ui/dummy_data/dummy_data.dart';
import 'package:instagram_clone_ui/model/user_model.dart';
import 'package:instagram_clone_ui/widgets/reel_video.dart';
import 'package:video_player/video_player.dart';

class SearchPage extends StatefulWidget {
  static const routeName = '/search_page';

  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            automaticallyImplyLeading: false,
            floating: true,
            pinned: true,
            title: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(19, 0, 0, 0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        Color.fromARGB(255, 124, 123, 123),
                        BlendMode.srcATop,
                      ),
                      child: Image.asset(
                        'assets/icons/search_outlined.png',
                      ),
                    ),
                  ),
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                    fontSize: 18.0,
                    color: Color.fromARGB(255, 139, 139, 139),
                  ),
                  prefixIconColor: Colors.black54,
                ),
              ),
            ),
          )
        ],
        body: MasonryGridView.count(
          padding: const EdgeInsets.only(top: 0.0),
          itemCount: users.length,
          mainAxisSpacing: 1.2,
          crossAxisSpacing: 1.2,
          crossAxisCount: 3,
          itemBuilder: (context, index) => _buildPostItem(users[index]),
        ),
      ),
    );
  }

  _buildPostItem(UserModel user) {
    final post = user.postsList.first;
    debugPrint(post.toString());
    return Stack(
      children: [
        (post.isReel == true && post.isCarousel == true) ||
                (post.isReel == false && post.isCarousel == false) ||
                (post.isReel != true && post.isCarousel != false) ||
                (post.isReel == false && post.isCarousel == true)
            ? AspectRatio(
                aspectRatio: 1 / 1,
                child: CachedNetworkImage(
                  imageUrl: post.imageUrl,
                  fit: BoxFit.cover,
                ),
              )
            : ReelVideo(videoLink: post.imageUrl),
        // ),
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
