import 'package:flutter/material.dart';

import '../colors/my_colors.dart';

class MyDialogStyle {
  static DialogTheme dialogTheme = const DialogTheme(
    backgroundColor: MyColors.popupBackgroundColor,
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      color: MyColors.popupTitleColor,
    ),
    contentTextStyle: TextStyle(
      fontSize: 16,
      color: MyColors.popupContentColor,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
  );
}
