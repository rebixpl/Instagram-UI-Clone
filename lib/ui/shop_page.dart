
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/dummy_data/dummy_data.dart';

class ShopPage extends StatefulWidget {
  static const routeName = '/shop_page';

  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final ScrollController scrollController = ScrollController();
  var isPinned = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (!isPinned &&
          scrollController.hasClients &&
          scrollController.offset > kToolbarHeight) {
        setState(() {
          isPinned = true;
        });
      } else if (isPinned &&
          scrollController.hasClients &&
          scrollController.offset < kToolbarHeight) {
        setState(() {
          isPinned = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      controller: scrollController,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          automaticallyImplyLeading: false,
          pinned: true,
          title: const Text(
            'Shop',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.my_library_books_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 45,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black12,
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                fillColor: Colors.grey,
                prefixIcon: Icon(
                  Icons.search,
                  size: 20,
                ),
                border: InputBorder.none,
                hintText: 'Search',
                prefixIconColor: Colors.black54,
              ),
            ),
          ),
        ),
      ],
      body: GridView.count(
          crossAxisCount: 2,
          children: shopList
              .map(
                (url) => Padding(
                  padding: const EdgeInsets.all(0.5),
                  child: CachedNetworkImage(
                    imageUrl: url,
                    fit: BoxFit.cover,
                  ),
                ),
              )
              .toList()),
    );
  }
}
