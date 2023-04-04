import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({required this.body, this.isHaveAppBar = false, Key? key})
      : super(key: key);

  final Widget body;
  final bool isHaveAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: isHaveAppBar
          ? AppBar(
              backgroundColor: Colors.transparent,
              leading: GestureDetector(
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                  ),
                ),
              ),
            )
          : null,
      body: body,
    );
  }
}
