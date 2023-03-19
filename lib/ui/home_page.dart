import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone_ui/dummy_data/dummy_data.dart';
import 'package:instagram_clone_ui/ui/add_post_page.dart';
import 'package:instagram_clone_ui/ui/home_content_page.dart';
import 'package:instagram_clone_ui/ui/profile_page.dart';
import 'package:instagram_clone_ui/ui/reels_page.dart';
import 'package:instagram_clone_ui/ui/search_page.dart';
import 'package:instagram_clone_ui/ui/shop_page.dart';
import 'package:instagram_clone_ui/widgets/circle_image.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home_page';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex = 0;

  void _onBottomNavTap(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _contentItems[_bottomNavIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          enableFeedback: false,
          backgroundColor: _bottomNavIndex == 3 ? Colors.black : Colors.white,
          items: _buildBottomNavBarItems(),
          currentIndex: _bottomNavIndex,
          onTap: (value) => _onBottomNavTap(value),
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> _buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: _bottomNavIndex == 0
            ? ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  Colors.black,
                  BlendMode.srcATop,
                ),
                child: Image.asset(
                  'assets/icons/home_solid.png',
                  width: 22.0,
                ),
              )
            : ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _bottomNavIndex != 3 ? Colors.black : Colors.white,
                  BlendMode.srcATop,
                ),
                child: Image.asset(
                  'assets/icons/home_outlined.png',
                  width: 22.0,
                ),
              ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: _bottomNavIndex == 1
            ? ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  Colors.black,
                  BlendMode.srcATop,
                ),
                child: Image.asset(
                  'assets/icons/search_solid.png',
                  width: 22.0,
                ),
              )
            : ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _bottomNavIndex != 3 ? Colors.black : Colors.white,
                  BlendMode.srcATop,
                ),
                child: Image.asset(
                  'assets/icons/search_outlined.png',
                  width: 22.0,
                ),
              ),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'assets/icons/new_post.svg',
          color: _bottomNavIndex != 3 ? Colors.black : Colors.white,
          width: 26.0,
        ),
        label: 'Favorite',
      ),
      BottomNavigationBarItem(
        icon: _bottomNavIndex != 3
            ? SvgPicture.asset(
                'assets/icons/reels_outlined.svg',
                // color: Colors.black,
              )
            : ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcATop,
                ),
                child: Image.asset(
                  'assets/icons/reels_solid.png',
                  width: 22.0,
                ),
              ),
        label: 'Add Post',
      ),
      BottomNavigationBarItem(
        icon: CircleImage(
          userModel: users[0],
          radius: 11.0,
          showAddStory: false,
          internalPadding: 1.0,
          outsideCircleColor:
              _bottomNavIndex != 4 ? Colors.white : Colors.black,
        ),
        label: 'Profile',
      ),
    ];
  }

  final List<Widget> _contentItems = const [
    HomeContentPage(),
    SearchPage(),
    // ShopPage(),
    AddPostPage(),
    ReelsPage(),
    ProfilePage(),
  ];
}
