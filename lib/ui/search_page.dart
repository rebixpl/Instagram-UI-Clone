import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_clone_ui/dummy_data/dummy_data.dart';
import 'package:instagram_clone_ui/model/user_model.dart';

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
        body: MasonryGridView.count(
          itemCount: users.length,
          crossAxisCount: 3,
          itemBuilder: (context, index) => _buildPostItem(users[index]),
        ),
      ),
    );
  }

  _buildPostItem(UserModel user) {
    return Padding(
      padding: const EdgeInsets.all(0.5),
      child: Image.network(user.imagePostUrl),
    );
  }
}
