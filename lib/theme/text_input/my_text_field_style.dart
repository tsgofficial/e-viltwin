import 'package:flutter/material.dart';

import '../colors/my_colors.dart';

class MyTextFieldStyle {
  /// The default InputBorder for the app.
  static const InputBorder _defaultBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(
      color: MyColors.inputBorderColor,
      width: 1,
    ),
  );

  /// The default InputDecorationTheme for the app.
  static InputDecorationTheme inputDecoration = InputDecorationTheme(
    fillColor: Colors.white,
    filled: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    labelStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: MyColors.inputLabelColor,
    ),
    hintStyle: const TextStyle(
      color: MyColors.inputHintColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    errorStyle: const TextStyle(fontSize: 0),
    counterStyle: const TextStyle(fontSize: 0),
    errorBorder: _defaultBorder.copyWith(
      borderSide: const BorderSide(
        color: MyColors.inputErrorBorderColor,
        width: 1,
      ),
    ),
    border: _defaultBorder,
    enabledBorder: _defaultBorder,
    focusedBorder: _defaultBorder,
    disabledBorder: _defaultBorder,
  );
}
