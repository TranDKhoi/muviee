import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold(
      {required this.body, this.isHaveAppBar = false, this.appBarTitle = "", Key? key})
      : super(key: key);

  final Widget body;
  final bool isHaveAppBar;
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: isHaveAppBar
          ? AppBar(
              scrolledUnderElevation: 0,
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
              title: Text(appBarTitle),
              centerTitle: true,
            )
          : null,
      body: body,
    );
  }
}
