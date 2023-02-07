import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/model/user_model.dart';

class CircleStory extends StatefulWidget {
  final bool isUser;
  final UserModel userModel;

  const CircleStory({
    super.key,
    required this.isUser,
    required this.userModel,
  });

  @override
  State<CircleStory> createState() => _CircleStoryState();
}

class _CircleStoryState extends State<CircleStory> {
  @override
  Widget build(BuildContext context) {
    bool isUser = widget.isUser;
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
                    color: Colors.grey,
                  ),
                  gradient: isUser == false
                      ? const LinearGradient(
                          colors: [
                            Colors.yellow,
                            Colors.orange,
                            Colors.red,
                            Colors.purple,
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        )
                      : null,
                ),
                padding: const EdgeInsets.all(2),
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(user.imageUrl),
                ),
              ),
              Visibility(
                visible: isUser,
                child: Positioned(
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
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 80,
            child: Text(
              user.username ?? 'Unknown',
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: Colors.black87),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
