import 'package:flutter/material.dart';

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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Instagram',
          style: TextStyle(fontFamily: 'Billabong', fontSize: 32),
        ),
        actions: _buildHomeActions(),
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _buildBottomNavBarItems(),
        currentIndex: _bottomNavIndex,
        onTap: (value) => _onBottomNavTap(value),
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
}
