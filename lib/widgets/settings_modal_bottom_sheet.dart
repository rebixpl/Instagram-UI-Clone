import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/global/indexes.dart';
import 'package:instagram_clone_ui/widgets/single_list_tile.dart';

class SettingsModalBottomSheet extends StatefulWidget {
  const SettingsModalBottomSheet({
    super.key,
  });

  @override
  State<SettingsModalBottomSheet> createState() =>
      _SettingsModalBottomSheetState();
}

class _SettingsModalBottomSheetState extends State<SettingsModalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    const double iconSize = 22.0;

    return Container(
      // height: 1250.0,
      color: const Color(0xFF737373),
      //so you don't have to change MaterialApp canvasColor
      child: Container(
        // height: 1250.0,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 68.0),
          child: Wrap(
            children: [
              Center(
                child: Container(
                  width: 44.0,
                  height: 4.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 214, 214, 214),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
              SingleListTile(
                icon: Image.asset(
                  'assets/icons/settings_gear.jpeg',
                  width: iconSize,
                ),
                text: "Settings",
                onTap: () {
                  homePageIndex.value = 1;
                  Navigator.pop(context);
                },
              ),
              SingleListTile(
                icon: Image.asset(
                  'assets/icons/scheduled_activity.jpeg',
                  width: iconSize,
                ),
                text: "Scheduled Content",
                onTap: () {},
              ),
              SingleListTile(
                icon: Image.asset(
                  'assets/icons/your_activity.jpeg',
                  width: iconSize,
                ),
                text: "Your activity",
                onTap: () {},
              ),
              SingleListTile(
                icon: Image.asset(
                  'assets/icons/archive.jpeg',
                  width: iconSize,
                ),
                text: "Archive",
                onTap: () {},
              ),
              SingleListTile(
                icon: Image.asset(
                  'assets/icons/insights.jpeg',
                  width: iconSize,
                ),
                text: "Insights",
                onTap: () {},
              ),
              SingleListTile(
                icon: Image.asset(
                  'assets/icons/qr_code.jpeg',
                  width: iconSize,
                ),
                text: "QR code",
                onTap: () {},
              ),
              SingleListTile(
                icon: Padding(
                  padding: const EdgeInsets.only(left: 2.0),
                  child: Image.asset(
                    'assets/icons/saved.jpeg',
                    width: iconSize / 1.2,
                  ),
                ),
                text: "Saved",
                onTap: () {},
              ),
              SingleListTile(
                icon: Image.asset(
                  'assets/icons/orders_and_payments.jpeg',
                  width: iconSize,
                ),
                text: "Orders and payments",
                onTap: () {},
              ),
              SingleListTile(
                icon: Image.asset(
                  'assets/icons/digital_collectibles.jpeg',
                  width: iconSize,
                ),
                text: "Digital collectibles",
                onTap: () {},
              ),
              SingleListTile(
                icon: Image.asset(
                  'assets/icons/close_friends.jpeg',
                  width: iconSize / 1.1,
                ),
                text: "Close friends",
                onTap: () {},
              ),
              SingleListTile(
                icon: Image.asset(
                  'assets/icons/favourites.jpeg',
                  width: iconSize,
                ),
                text: "Favourites",
                onTap: () {},
              ),
              SingleListTile(
                icon: Image.asset(
                  'assets/icons/discover_people.jpeg',
                  width: iconSize,
                ),
                text: "Discover people",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
