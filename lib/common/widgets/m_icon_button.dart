import 'package:flutter/material.dart';

class MIconButton extends StatelessWidget {
  const MIconButton(
      {required this.onTap, required this.text, required this.icon, Key? key})
      : super(key: key);

  final String text;
  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.grey,
      ),
      onPressed: onTap,
      child: Row(
        children: [
          Text(text),
          Icon(icon),
        ],
      ),
    );
  }
}
