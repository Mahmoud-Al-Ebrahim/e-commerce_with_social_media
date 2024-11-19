import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'font.dart';

TextTheme   appTextTheme(TextTheme base, Color textColor) => base
    .copyWith(
     
  
      headlineLarge: base.headlineLarge?.copyWith(  // used
        fontSize: _FontSize.heading_02, /// 36
        fontWeight: _light,
        letterSpacing:0,
        fontFamily: _sFDisplayLightFamily,
      ),
      headlineMedium: base.headlineMedium?.copyWith(  // used
        fontSize: _FontSize.heading_03, /// 26
        fontWeight: _bold,
        letterSpacing:0,
        fontFamily: _sFDisplayLightFamily,
      ),
      headlineSmall: base.headlineSmall?.copyWith(  // used
        fontSize: _FontSize.heading_05, /// 20
        fontWeight: _bold,
        letterSpacing:0,
        fontFamily: _sFDisplayLightFamily,
      ),
      bodyLarge: base.bodyLarge?.copyWith( // used
        fontSize: _FontSize.heading_06, /// 22
        fontWeight: _medium,
        letterSpacing:0,
        fontFamily: _sFDisplayLightFamily,
      ),
      bodyMedium: base.bodyMedium?.copyWith( // used
        fontSize: _FontSize.subtitle_01, /// 18
        fontWeight: _bold,
        letterSpacing:0,
        fontFamily: _sFDisplayLightFamily,
      ),
      bodySmall: base.bodySmall?.copyWith(  // used
        fontSize: _FontSize.subtitle_02,  /// 16
        fontWeight: _bold,
        letterSpacing:0,
        fontFamily: _sFDisplayLightFamily,
      ),
      
      displayMedium: base.displayMedium?.copyWith(  // used
        fontSize: _FontSize.body_01,  /// 16
        fontWeight: _regular,
        letterSpacing:0,
        fontFamily: _sFDisplayLightFamily,
      ),
      titleLarge: base.titleLarge?.copyWith(  // used
        fontSize: _FontSize.body_02,  /// 14
        fontWeight: _regular,
        letterSpacing:0,
        fontFamily: _sFDisplayLightFamily,
      ),
      titleMedium: base.titleMedium?.copyWith( // used
        fontSize: _FontSize.titleMedium,  /// 12
        fontWeight: _regular,
        letterSpacing:0,
        fontFamily: _sFDisplayLightFamily,
      ),
      titleSmall: base.titleSmall?.copyWith(  // used
        fontSize: _FontSize.titleSmall, /// 10
        fontWeight: _regular,
        letterSpacing:0,
        fontFamily: _sFDisplayLightFamily,
      ),
    )
    .apply(
      displayColor: textColor,
      bodyColor: textColor,
    );