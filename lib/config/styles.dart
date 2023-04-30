import 'package:flutter/material.dart';

import 'colors.dart';
import 'font_size.dart';

class AppStyle {
  static const TextStyle normalTextStyle =
      TextStyle(color: Colors.black, fontSize: AppFontSize.normalFontSize);

  static const TextStyle primaryColorBoldStyle =
      TextStyle(color: AppColor.primaryColor, fontWeight: FontWeight.bold);

  static const TextStyle largeTitleTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSize.titleFontSize);

  static const TextStyle primaryColorLargeTitleStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: AppFontSize.titleFontSize,
    color: AppColor.primaryColor,
  );

  static const TextStyle mediumTitleTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 18);

  static const TextStyle normalItalicPrimaryTextStyle =
      TextStyle(color: AppColor.primaryColor, fontStyle: FontStyle.italic);
}
