import 'package:flutter/material.dart';

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
          style: TextStyle(fontFamily: 'Billabong', fontSize: 32),
        ),
        actions: _buildHomeActions(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildStoryElement(),
            const SizedBox(height: 8),
            const Divider(
              height: .3,
              color: Colors.black26,
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
        icon: const Icon(Icons.add_a_photo_outlined),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.favorite_border_outlined),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.send_outlined),
      ),
    ];
  }

  _buildStoryElement() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
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
                ),
                padding: const EdgeInsets.all(2),
                child: CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.white,
                  child: Image.network(
                    fit: BoxFit.fitHeight,
                    'http://cdn.onlinewebfonts.com/svg/img_568656.png',
                  ),
                ),
              ),
              Positioned(
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
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Your Story',
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
