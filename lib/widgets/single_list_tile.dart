import 'package:flutter/material.dart';

class SingleListTile extends StatelessWidget {
  final Widget icon;
  final String text;
  final VoidCallback onTap;
  final bool isSettingsPage;

  const SingleListTile({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
    this.isSettingsPage = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Padding(
        padding: EdgeInsets.only(
          bottom: isSettingsPage ? 0.0 : 16.0,
        ),
        child: icon,
      ),
      horizontalTitleGap: 0.0,
      minVerticalPadding: 2.0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: isSettingsPage ? 0.0 : 11.0),
          Text(
            text,
            style: const TextStyle(
              color: Color.fromARGB(255, 40, 40, 40),
              fontSize: 15.0,
            ),
          ),
          SizedBox(height: isSettingsPage ? 8.0 : 10.0),
          isSettingsPage ? const SizedBox.shrink() : const Divider(),
        ],
      ),
      trailing: isSettingsPage
          ? IconButton(
              onPressed: onTap,
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: const Icon(
                  Icons.chevron_right_outlined,
                  size: 30.0,
                  color: Color.fromARGB(255, 209, 209, 209),
                ),
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
