import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone_ui/dummy_data/dummy_data.dart';
import 'package:instagram_clone_ui/widgets/circle_story.dart';
import 'package:instagram_clone_ui/widgets/user_post.dart';

class HomeContentPage extends StatefulWidget {
  static const routeName = '/home_content_page';

  const HomeContentPage({super.key});

  @override
  State<HomeContentPage> createState() => _HomeContentPageState();
}

class _HomeContentPageState extends State<HomeContentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Instagram',
          style: TextStyle(fontFamily: 'BlueVinyl', fontSize: 32),
        ),
        actions: _buildHomeActions(),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: 120,
            //   child: ListView.builder(
            //     physics: const BouncingScrollPhysics(),
            //     itemBuilder: (context, index) => index == 0
            //         ? CircleStory(
            //             isUser: true,
            //             userModel: users[index],
            //           )
            //         : CircleStory(
            //             isUser: false,
            //             userModel: users[index],
            //           ),
            //     itemCount: users.length,
            //     scrollDirection: Axis.horizontal,
            //   ),
            // ),
            const SizedBox(height: 8),
            const Divider(
              height: .3,
              color: Colors.black26,
            ),
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => UserPost(user: users[index]),
              itemCount: users.length,
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildHomeActions() {
    return [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/new_post.svg'),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.favorite_border_outlined),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/messages_outlined.svg'),
      ),
    ];
  }
}
