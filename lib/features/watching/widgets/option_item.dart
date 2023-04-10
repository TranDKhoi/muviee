import 'package:flutter/material.dart';

class OptionItem extends StatelessWidget {
  const OptionItem({required this.text, required this.icon, required this.onTap, Key? key})
      : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 5),
          Text(text),
        ],
      ),
    );
  }
}
