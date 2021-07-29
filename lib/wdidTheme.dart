import 'package:flutter/material.dart';

class WdidTheme {
  static const MaterialColor wdidP = MaterialColor(_wdidPPrimaryValue, <int, Color>{
    50: Color(0xFFEDE4FF),
    100: Color(0xFFD1BCFF),
    200: Color(0xFFB28FFF),
    300: Color(0xFF9362FF),
    400: Color(0xFF7C41FF),
    500: Color(_wdidPPrimaryValue),
    600: Color(0xFF5D1BFF),
    700: Color(0xFF5317FF),
    800: Color(0xFF4912FF),
    900: Color(0xFF370AFF),
  });
  static const int _wdidPPrimaryValue = 0xFF651FFF;

  static const MaterialColor wdidPAccent = MaterialColor(_wdidPAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_wdidPAccentValue),
    400: Color(0xFFCBC2FF),
    700: Color(0xFFB5A8FF),
  });
  static const int _wdidPAccentValue = 0xFFF6F5FF;

  static const MaterialColor wdidA = MaterialColor(_wdidAPrimaryValue, <int, Color>{
    50: Color(0xFFF6FFE4),
    100: Color(0xFFEAFFBC),
    200: Color(0xFFDCFF8F),
    300: Color(0xFFCDFF62),
    400: Color(0xFFC3FF41),
    500: Color(_wdidAPrimaryValue),
    600: Color(0xFFB1FF1B),
    700: Color(0xFFA8FF17),
    800: Color(0xFFA0FF12),
    900: Color(0xFF91FF0A),
  });
  static const int _wdidAPrimaryValue = 0xFFB8FF1F;

  static const MaterialColor wdidAAccent = MaterialColor(_wdidAAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_wdidAAccentValue),
    400: Color(0xFFE1FFC2),
    700: Color(0xFFD5FFA8),
  });
  static const int _wdidAAccentValue = 0xFFFAFFF5;

}