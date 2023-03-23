import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/global/indexes.dart';
import 'package:instagram_clone_ui/widgets/settings_page_options.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    const double iconSize = 22.0;

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text(
          'Settings',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        padding: const EdgeInsetsDirectional.only(start: 0.0),
        leading: CupertinoNavigationBarBackButton(
          onPressed: () => homePageIndex.value = 0,
          color: Colors.black,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/img/some_acc_settings.jpeg'),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: SettingsPageOptions(iconSize: iconSize),
            ),
            Image.asset('assets/img/logins_and_acc_centre.jpeg'),
            const SizedBox(height: 60.0),
          ],
        ),
      ),
    );
  }
}
