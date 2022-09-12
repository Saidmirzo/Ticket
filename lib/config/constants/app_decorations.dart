import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppDecorations {
  static BoxDecoration defDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: AppColors.enableButtonColor,
  );

  static ButtonStyle buttonStyle({
    double? borderRadius,
    Color? bgColor,
    EdgeInsets? padding,
    BorderSide? border,
  }) {
    return ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 15),
          side: border ?? BorderSide.none,
        ),
      ),
      backgroundColor: MaterialStateProperty.all(bgColor ?? AppColors.enableButtonColor),
      overlayColor: MaterialStateProperty.all(AppColors.selectedButtonColor),
      padding: MaterialStateProperty.all(padding),
    );
  }
}
