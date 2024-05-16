import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button_style/my_button_style.dart';
import 'colors/my_colors.dart';
import 'popup/my_bottom_sheet_style.dart';
import 'popup/my_dialog_style.dart';
import 'text_input/my_text_field_style.dart';

class MyTheme {
  static final MyTheme _instance = MyTheme._internal();
  factory MyTheme() => _instance;

  MyTheme._internal();

  static MyTheme get instance => _instance;

  static String fontFamily = GoogleFonts.notoSans().fontFamily ?? 'Rubik';

  /// Get the theme data
  ThemeData get themeData => ThemeData(
        fontFamily: fontFamily,
        primarySwatch: Colors.blue,
        dividerColor: MyColors.dividerColor,
        scaffoldBackgroundColor: MyColors.backgroundColor,
        hintColor: MyColors.hintColor,
        textTheme: GoogleFonts.notoSansTextTheme(),
        primaryTextTheme: GoogleFonts.notoSansTextTheme(),
        colorScheme: const ColorScheme.light(
          primary: MyColors.primaryColor,
          secondary: MyColors.secondaryColor,
          background: MyColors.backgroundColor,
          error: MyColors.errorColor,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: MyButtonStyle.elevatedButtonStyle,
        ),
        textButtonTheme: TextButtonThemeData(
          style: MyButtonStyle.textButtonStyle,
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: MyButtonStyle.outlinedButtonStyle,
        ),
        inputDecorationTheme: MyTextFieldStyle.inputDecoration,
        appBarTheme: AppBarTheme(
          backgroundColor: MyColors.secondaryColor,
          scrolledUnderElevation: 0,
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          foregroundColor: Colors.white,
          actionsIconTheme: const IconThemeData(
            color: Colors.white,
          ),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontFamily: fontFamily,
          ),
          toolbarTextStyle: const TextStyle(color: Colors.white),
        ),
        splashFactory: InkRipple.splashFactory,
        drawerTheme: const DrawerThemeData(
          backgroundColor: MyColors.backgroundColor,
        ),
        bottomSheetTheme: MyBottomSheetStyle.bottomSheetThemeData,
        dialogTheme: MyDialogStyle.dialogTheme,
      );
}
