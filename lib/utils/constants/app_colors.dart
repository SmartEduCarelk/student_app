import 'package:flutter/material.dart';

class AppColors {
  // * Highlight colors (blue scale)
  static const primary = Color(0xFF006FFD);    // brand / main
  static const onPrimary = Color(0xFF2897FF); // darker shade
  static const secondary = Color(0xFF6FBAFF); // light shade
  static const onSecondary = Color(0xFFB4DBFF); // pale shade
  static const surface = Color(0xFFEAF2FF); // background tint


  // * Neutral shades
  // Light neutrals (backgrounds, borders, surfaces)
  static const neutralLight = Color(0xFFC5C6CC);   // light neutral (border)
  static const neutralLighter = Color(0xFFD4D6DD); // lighter neutral (divider)
  static const neutralSurface = Color(0xFFE8E9F1); // surface background
  static const neutralBackground = Color(0xFFF8F9FE); // app background
  static const neutralWhite = Color(0xFFFFFFFF);   // pure white

  // Dark neutrals (text, icons, strong surfaces)
  static const neutralBlack = Color(0xFF1F2024);   // near black
  static const neutralDark = Color(0xFF2F3036);    // dark neutral
  static const neutralDarker = Color(0xFF494A50);  // darker neutral
  static const neutralText = Color(0xFF71727A);    // secondary text
  static const neutralCaption = Color(0xFF8F9098); // caption / disabled text

  // * Support colors
  // Success (positive feedback, confirmations)
  static const successDark = Color(0xFF298267);       // dark green
  static const success = Color(0xFF3AC0A0);           // main success green
  static const successBackground = Color(0xFFE7F4E8); // success background tint

  // Warning (alerts, cautions)
  static const warningDark = Color(0xFFE86339);       // dark orange
  static const warning = Color(0xFFFFA726);           // main warning orange
  static const warningBackground = Color(0xFFFFF4E4); // warning background tint

  // Error (failures, critical states)
  static const error = Color(0xFFED3241);         // dark red
  static const onError = Color(0xFFFF616D);             // main error red
  static const errorBackground = Color(0xFFFFE2E5);   // error background tint


}
