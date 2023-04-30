import 'package:flutter/material.dart';

import 'global_keys.dart';

class AlertUtil {
  static showLoading() {
    showDialog(
        context: navigatorKey.currentContext!,
        barrierDismissible: false,
        builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(
                strokeWidth: 3,
              ),
            ],
          );
        });
  }

  static hideLoading() {
    navigatorKey.currentState?.pop();
  }

  static showToast(String message) {
    return scaffoldKey.currentState?.showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(milliseconds: 2000),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
