import 'package:flutter/material.dart';
import 'package:vira_shop_dz/core/utils/app_colors.dart';
import 'package:vira_shop_dz/core/utils/app_string.dart';

abstract class AppTextStyle {
  static TextStyle titel = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: AppString.fontFamilyPacifico,
    fontSize: 32,
    color: AppColors.primaryColor,
  );

  static TextStyle secondColor17 = TextStyle(
    fontSize: 17,
    color: AppColors.secondColor,
    fontFamily: AppString.fontFamilyPoppins
  );

  static TextStyle black24 = TextStyle(
     fontWeight: FontWeight.w500,
    fontSize: 20,
    color: AppColors.blackColor,
    fontFamily: AppString.fontFamilyPoppins
  );
    static TextStyle grey24 = TextStyle(
    fontSize: 24,
    color: Colors.grey,
    fontFamily: AppString.fontFamilyPoppins
  );
   static TextStyle white18 = TextStyle(
     fontWeight: FontWeight.w500,
    fontSize: 18,
    color: Colors.white,
    fontFamily: AppString.fontFamilyPoppins
  );



}
