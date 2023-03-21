import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/model/user_model.dart';

class CircleImage extends StatefulWidget {
  final UserModel userModel;
  final double radius;
  final bool showAddStory;
  final double internalPadding;
  final Color outsideCircleColor;

  const CircleImage({
    super.key,
    required this.userModel,
    this.radius = 35,
    this.showAddStory = true,
    this.internalPadding = 5.0,
    this.outsideCircleColor = Colors.grey,
  });

  @override
  State<CircleImage> createState() => _CircleImageState();
}

class _CircleImageState extends State<CircleImage> {
  @override
  Widget build(BuildContext context) {
    UserModel user = widget.userModel;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1,
                    color: widget.outsideCircleColor,
                  ),
                ),
                padding: EdgeInsets.all(widget.internalPadding),
                child: CachedNetworkImage(
                  imageUrl: user.imageUrl,
                  imageBuilder: (context, imageProvider) => CircleAvatar(
                    radius: widget.radius,
                    backgroundImage: imageProvider,
                    backgroundColor: Colors.transparent,
                  ),
                  progressIndicatorBuilder: (context, url, progress) =>
                      CircularProgressIndicator(
                    value: progress.progress,
                  ),
                ),
              ),
              widget.showAddStory
                  ? Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.white),
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
