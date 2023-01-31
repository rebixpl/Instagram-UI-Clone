import 'package:flutter/material.dart';

class CustomOrDivider extends StatelessWidget {
  const CustomOrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: Divider(
            thickness: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text('OR'),
        ),
        Expanded(
          child: Divider(
            thickness: 3,
          ),
        ),
      ],
    );
  }
}
