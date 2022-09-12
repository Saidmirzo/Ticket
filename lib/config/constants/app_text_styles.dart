import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTextStyles {
  const AppTextStyles._();

  static const String fontFamily = 'Inter';
  //12, 14, 20, 25, 27, 14-700, 18-700,

  static TextStyle h1 = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 27.0,
      color: AppColors.primaryTextColor);

  static TextStyle h2 = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 25.0,
      color: AppColors.primaryTextColor);

  static TextStyle h3 = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 20.0,
      color: AppColors.primaryTextColor);

  static TextStyle h4 = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 14.0,
      color: AppColors.primaryTextColor);

  static TextStyle h5 = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 12.0,
      color: AppColors.primaryTextColor);

  
  static TextStyle b1Bold = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 18.0,
      color: AppColors.primaryTextColor);

  static TextStyle b2Bold = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 14.0,
      color: AppColors.primaryTextColor);


}
