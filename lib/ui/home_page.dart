import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/ui/home_content_page.dart';
import 'package:instagram_clone_ui/ui/profile_page.dart';
import 'package:instagram_clone_ui/ui/reels_page.dart';
import 'package:instagram_clone_ui/ui/search_page.dart';
import 'package:instagram_clone_ui/ui/shop_page.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        items: _buildBottomNavBarItems(),
        currentIndex: _bottomNavIndex,
        onTap: (value) => _onBottomNavTap(value),
      ),
    );
  }

  List<BottomNavigationBarItem> _buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: _bottomNavIndex == 0
            ? const Icon(Icons.home)
            : const Icon(Icons.home_outlined),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: _bottomNavIndex == 1
            ? const Icon(Icons.search)
            : const Icon(Icons.search_outlined),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: _bottomNavIndex == 2
            ? const Icon(Icons.movie_creation)
            : const Icon(Icons.movie_creation_outlined),
        label: 'Add Post',
      ),
      BottomNavigationBarItem(
        icon: _bottomNavIndex == 3
            ? const Icon(Icons.shopping_bag)
            : const Icon(Icons.shopping_bag_outlined),
        label: 'Favorite',
      ),
      BottomNavigationBarItem(
        icon: _bottomNavIndex == 4
            ? const Icon(Icons.account_circle)
            : const Icon(Icons.account_circle_outlined),
        label: 'Profile',
      ),
    ];
  }

  final List<Widget> _contentItems = const [
    HomeContentPage(),
    SearchPage(),
    ReelsPage(),
    ShopPage(),
    ProfilePage(),
  ];
}
