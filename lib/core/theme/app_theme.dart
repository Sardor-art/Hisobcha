import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: Colors.white,
  highlightColor: AppColors.assets15,
  appBarTheme: const AppBarTheme(
    color: AppColors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  ),
  scaffoldBackgroundColor: AppColors.background,
  fontFamily: 'SFPro',
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontFamily: 'SFPro',
      fontSize: 72.0,
      fontWeight: FontWeight.w800,
    ),
  ),
  bottomSheetTheme:
      const BottomSheetThemeData(backgroundColor: Colors.transparent),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.assets),
);
