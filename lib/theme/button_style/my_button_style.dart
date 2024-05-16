import 'package:flutter/material.dart';
import '../my_theme.dart';

import '../colors/my_colors.dart';

class MyButtonStyle {
  /// Button shape
  static const OutlinedBorder _buttonShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );

  /// Button minimum size
  static const Size _buttonMinSize = Size(100, 44);

  /// Button text style
  static TextStyle buttonTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: MyColors.primaryColor,
    fontFamily: MyTheme.fontFamily,
  );

  /// Button padding
  static const EdgeInsetsGeometry _buttonPadding = EdgeInsets.symmetric(horizontal: 16);

  /// Elevated button style
  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: MyColors.primaryColor,
    foregroundColor: Colors.white,
    disabledBackgroundColor: MyColors.inactiveColor,
    disabledForegroundColor: const Color(0xFFBBBECD),
    elevation: 1,
    shadowColor: const Color(0x1EFF9900),
    shape: _buttonShape,
    minimumSize: _buttonMinSize,
    padding: _buttonPadding,
    textStyle: buttonTextStyle,
  );

  /// Text button style
  static ButtonStyle textButtonStyle = TextButton.styleFrom(
    shape: _buttonShape.copyWith(
      side: const BorderSide(
        color: MyColors.primaryColor,
        width: 1,
      ),
    ),
    textStyle: buttonTextStyle,
    padding: _buttonPadding,
    minimumSize: _buttonMinSize,
  );

  /// Outlined button style
  static ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
    shape: _buttonShape.copyWith(
      side: const BorderSide(
        color: MyColors.primaryColor,
        width: 1,
      ),
    ),
    textStyle: buttonTextStyle,
    padding: _buttonPadding,
    minimumSize: _buttonMinSize,
  );
}
