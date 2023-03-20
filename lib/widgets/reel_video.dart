import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReelVideo extends StatefulWidget {
  final String videoLink;

  const ReelVideo({
    super.key,
    required this.videoLink,
  });

  @override
  State<ReelVideo> createState() => _ReelVideoState();
}

class _ReelVideoState extends State<ReelVideo> {
  late VideoPlayerController _videoController;

  @override
  void initState() {
    debugPrint("reel_video.dart >>> ${widget.videoLink}");
    _videoController = VideoPlayerController.network(
      widget.videoLink,
    )..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        _videoController.setLooping(true);
        _videoController.setVolume(0.0);
        _videoController.play();

        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform.scale(
          scale: 4.0,
          child: Center(
            child: AspectRatio(
              aspectRatio: _videoController.value.aspectRatio,
              child: VideoPlayer(_videoController),
            ),
          ),
        ),
      ],
    );
  }
}
