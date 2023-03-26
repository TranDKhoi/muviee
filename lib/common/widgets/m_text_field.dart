import 'package:flutter/material.dart';

class MTextField extends StatefulWidget {
  const MTextField(
      {Key? key,
      required this.controller,
      this.hintText = "",
      this.obscureText = false,
      this.preIcon})
      : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final IconData? preIcon;

  @override
  State<MTextField> createState() => _MTextFieldState();
}

class _MTextFieldState extends State<MTextField> {
  late bool isPassword;

  @override
  void initState() {
    isPassword = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        prefixIcon: widget.preIcon != null ? Icon(widget.preIcon) : null,
        suffixIcon: widget.obscureText
            ? GestureDetector(
                child: const Icon(Icons.remove_red_eye),
                onTap: () {
                  setState(() {
                    isPassword = !isPassword;
                  });
                },
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: widget.hintText,
      ),
      obscureText: isPassword,
    );
  }
}
