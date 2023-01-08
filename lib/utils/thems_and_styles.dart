import 'package:flutter/material.dart';
import 'package:pet_market/utils/extesions/material_color_extension.dart';
import 'constants.dart';

abstract class Config {
  static final appTheme = ThemeData(
    primarySwatch: Colors.orange.getMaterial,
    appBarTheme: AppBarTheme(
        color: Constants.appBarColor, centerTitle: true, elevation: 0),
    scaffoldBackgroundColor: Colors.white,
  );
  static const baseTextStyle = TextStyle(
    fontFamily: Constants.fontFamily,
  );
}
