import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/widgets/single_list_tile.dart';

class SettingsPageOptions extends StatelessWidget {
  const SettingsPageOptions({
    super.key,
    required this.iconSize,
  });

  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleListTile(
          isSettingsPage: true,
          icon: Image.asset(
            'assets/icons/discover_people.jpeg',
            width: iconSize + 2.0,
          ),
          text: "Follow and invite friends",
          onTap: () {},
        ),
        SingleListTile(
          isSettingsPage: true,
          icon: Padding(
            padding: const EdgeInsets.only(
              bottom: 8.0,
            ),
            child: Image.asset(
              'assets/icons/bell.jpeg',
              width: iconSize,
            ),
          ),
          text: "Notifications",
          onTap: () {},
        ),
        SingleListTile(
          isSettingsPage: true,
          icon: Image.asset(
            'assets/icons/creator.jpeg',
            width: iconSize + 2.0,
          ),
          text: "Creator",
          onTap: () {},
        ),
        SingleListTile(
          isSettingsPage: true,
          icon: Padding(
            padding: const EdgeInsets.only(
              left: 3.0,
              bottom: 8.0,
            ),
            child: Image.asset(
              'assets/icons/privacy.jpeg',
              width: iconSize - 4.0,
            ),
          ),
          text: "Privacy",
          onTap: () {},
        ),
        SingleListTile(
          isSettingsPage: true,
          icon: Image.asset(
            'assets/icons/supervision.jpeg',
            width: iconSize,
          ),
          text: "Supervision",
          onTap: () {},
        ),
        SingleListTile(
          isSettingsPage: true,
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Image.asset(
              'assets/icons/security.jpeg',
              width: iconSize,
            ),
          ),
          text: "Security",
          onTap: () {},
        ),
        SingleListTile(
          isSettingsPage: true,
          icon: Image.asset(
            'assets/icons/orders_and_payments.jpeg',
            width: iconSize + 2.0,
          ),
          text: "Ad payments",
          onTap: () {},
        ),
        SingleListTile(
          isSettingsPage: true,
          icon: Image.asset(
            'assets/icons/ads.jpeg',
            width: iconSize + 1.0,
          ),
          text: "Ads",
          onTap: () {},
        ),
        SingleListTile(
          isSettingsPage: true,
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 7.0),
            child: Image.asset(
              'assets/icons/account.jpeg',
              width: iconSize + 2.0,
            ),
          ),
          text: "Account",
          onTap: () {},
        ),
        SingleListTile(
          isSettingsPage: true,
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 6.0),
            child: Image.asset(
              'assets/icons/help.jpeg',
              width: iconSize + 2.0,
            ),
          ),
          text: "Help",
          onTap: () {},
        ),
        SingleListTile(
          isSettingsPage: true,
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Image.asset(
              'assets/icons/about.jpeg',
              width: iconSize + 2.0,
            ),
          ),
          text: "About",
          onTap: () {},
        ),
      ],
    );
  }
}
