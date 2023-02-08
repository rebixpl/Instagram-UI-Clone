import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  static const routeName = '/search_page';

  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            automaticallyImplyLeading: false,
            title: Container(
              height: 45,
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
          )
        ],
        body: const Center(
          child: Text('Search Page'),
        ),
      ),
    );
  }
}
