import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReelsPage extends StatefulWidget {
  static const routeName = '/reels_page';

  const ReelsPage({super.key});

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  FlickManager? flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
    );
  }

  @override
  void dispose() {
    super.dispose();
    flickManager!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return PageView(
      controller: pageController,
      scrollDirection: Axis.vertical,
      children: [
        Center(
          child: AspectRatio(
            aspectRatio: 9 / 20,
            child: FlickVideoPlayer(flickManager: flickManager!),
          ),
        ),
        Center(
          child: AspectRatio(
            aspectRatio: 9 / 20,
            child: FlickVideoPlayer(flickManager: flickManager!),
          ),
        ),
        Center(
          child: AspectRatio(
            aspectRatio: 9 / 20,
            child: FlickVideoPlayer(flickManager: flickManager!),
          ),
        ),
      ],
    );
  }
}
