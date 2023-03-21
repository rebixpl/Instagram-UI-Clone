import 'package:flutter/material.dart';

class SingleListTile extends StatelessWidget {
  final Widget icon;
  final String text;
  final VoidCallback onTap;

  const SingleListTile({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: icon,
      ),
      horizontalTitleGap: 0.0,
      minVerticalPadding: 2.0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 11.0),
          Text(
            text,
            style: const TextStyle(
              color: Color.fromARGB(255, 40, 40, 40),
              fontSize: 15.0,
            ),
          ),
          const SizedBox(height: 10.0),
          const Divider(),
        ],
      ),
    );
  }
}
