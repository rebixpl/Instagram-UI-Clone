import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone_ui/dummy_data/dummy_data.dart';
import 'package:instagram_clone_ui/ui/profile_post_page.dart';
import 'package:instagram_clone_ui/widgets/circle_image.dart';

class ProfilePage extends StatefulWidget {
  static const routeName = '/profile_page';

  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            _buildAppBar(),
            _buildHeaderAppBar(),
            _buildTabBar(),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 1.6),
              child: ProfilePostPage(),
            ),
            SvgPicture.asset('assets/icons/reels_outlined.svg'),
            const Center(
              child: Text("Guides"),
            ),
            const Icon(Icons.account_box_outlined),
          ],
        ),
      ),
    );
  }

  SliverPersistentHeader _buildTabBar() {
    return SliverPersistentHeader(
      delegate: SliverAppBarDelegate(
        tabBar: TabBar(
          controller: _tabController,
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          indicatorWeight: 1,
          onTap: (value) {
            setState(() {});
          },
          tabs: [
            Tab(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _tabController.index == 0 ? Colors.black : Colors.grey,
                  BlendMode.lighten,
                ),
                child: Image.asset(
                  'assets/icons/grid_icon.jpeg',
                  width: 22.0,
                ),
              ),
            ),
            Tab(
              icon: SvgPicture.asset(
                'assets/icons/reels_outlined.svg',
                width: 26.0,
                color: _tabController.index == 1 ? Colors.black : Colors.grey,
              ),
            ),
            Tab(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _tabController.index == 2 ? Colors.black : Colors.grey,
                  BlendMode.srcATop,
                ),
                child: Image.asset(
                  'assets/icons/guides_icon-removebg.png',
                  width: 22.0,
                ),
              ),
            ),
            Tab(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 2.0),
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    _tabController.index == 3 ? Colors.black : Colors.grey,
                    BlendMode.srcATop,
                  ),
                  child: Image.asset(
                    'assets/icons/tags_icon-removebg.png',
                    width: 23.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SliverAppBar _buildAppBar() {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      // titleSpacing: -10,
      title: _buildTitleAppBar,
      pinned: true,
      // leading: IconButton(
      //   onPressed: () {},
      //   icon: const Icon(
      //     Icons.lock_outline,
      //     size: 20,
      //   ),
      // ),
      actions: _buildActionsAppBar,
    );
  }

  SliverToBoxAdapter _buildHeaderAppBar() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleImage(
                  userModel: users[0],
                  radius: 42.0,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "102",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Posts",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "2 377",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(width: 22),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "3 855",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Following",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
              ],
            ),

            Text(
              users[0].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              "Modeling Agency",
              style: TextStyle(color: Color.fromARGB(255, 16, 79, 131)),
            ),
            const Text(
              "Hot Pics & Girls, DM me if you want to post your content 💬\nFollow for more 😃",
            ),
            const SizedBox(height: 8),
            // GestureDetector(
            //   onTap: () {},
            //   child: Row(
            //     children: const [
            //       Icon(
            //         Icons.link,
            //         color: Colors.blue,
            //       ),
            //       SizedBox(width: 4),
            //       Text(
            //         "github.com/ramdhanjr11",
            //         style: TextStyle(color: Colors.blue),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[200],
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 12.0,
                    bottom: 12.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Professional dashboard',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '11K accounts reached in the last 30 days.',
                            style: TextStyle(
                              color: Color.fromARGB(255, 119, 118, 118),
                              fontWeight: FontWeight.normal,
                              fontSize: 12.5,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[200],
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Edit profile',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                Expanded(
                  flex: 3,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[200],
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Share profile',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                // Expanded(
                //   flex: 1,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       backgroundColor: Colors.grey[200],
                //       elevation: 0,
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(8.0),
                //       ),
                //     ),
                //     onPressed: () {},
                //     child: const Icon(
                //       Icons.person_add_outlined,
                //       size: 15,
                //       color: Colors.black,
                //     ),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> get _buildActionsAppBar {
    return [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/new_post.svg'),
      ),
      IconButton(
        onPressed: () {},
        // icon: const Icon(
        //   Icons.menu,
        //   size: 30,
        // ),
        icon: const FaIcon(
          FontAwesomeIcons.bars,
        ),
      ),
    ];
  }

  GestureDetector get _buildTitleAppBar {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            users[0].username ?? "Empty Username",
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_down_outlined,
            size: 18,
          ),
        ],
      ),
    );
  }
}

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  SliverAppBarDelegate({
    required this.tabBar,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return tabBar;
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
