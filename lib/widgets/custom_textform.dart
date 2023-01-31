import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  final String? hintText;
  final bool? isObsecure;

  CustomTextForm({
    super.key,
    this.hintText,
    this.isObsecure,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      child: TextField(
        style: const TextStyle(fontSize: 14),
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
        obscureText: isObsecure ?? false,
      ),
    );
  }
}
