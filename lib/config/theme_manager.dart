import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/config/values_manager.dart';

import 'color_manager.dart';
import 'styles_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    scaffoldBackgroundColor: ColorManager.lightGrey,

    // app bar theme
    appBarTheme: AppBarTheme(

      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarDividerColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
          systemNavigationBarIconBrightness: Brightness.light),
      centerTitle: true,
      elevation: AppSize.s0,
      titleTextStyle: getJosefinSansBoldStyle(
          fontSize: AppSize.s25.sp, color: ColorManager.white),
    ),
    // input decoration theme (text form field)
    errorColor: ColorManager.error,
    inputDecorationTheme: InputDecorationTheme(
      // hint style
      hintStyle: getRalewayRegularStyle(
          color: ColorManager.grey, fontSize: AppSize.s20.sp),
      labelStyle: getRalewayRegularStyle(
          color: ColorManager.grey, fontSize: AppSize.s20.sp),
      errorStyle: getRalewayRegularStyle(
          color: ColorManager.grey, fontSize: AppSize.s15.sp),

      // enabled border style
      enabledBorder: InputBorder.none,
      // focused border style
      focusedBorder: InputBorder.none,
      // error border style
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1.w),
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.s20.r),
        ),
      ),
      // focused border style
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1.w),
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.s20.r),
        ),
      ),
    ),
    // icon theme
    iconTheme: IconThemeData(color: ColorManager.white, size: AppSize.s25.sp),
    // text button
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return ColorManager.grey;
            } else {
              return ColorManager.black;
            }
          },
        ),
        textStyle: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return getJosefinSansSemiBoldStyle(
                color: ColorManager.grey, fontSize: AppSize.s12.sp);
          } else {
            return getJosefinSansSemiBoldStyle(
                color: ColorManager.black, fontSize: AppSize.s12.sp);
          }
        }),
      ),
    ),
    // elevated button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(ColorManager.elevatedButtonColor),
        foregroundColor:
            MaterialStateProperty.all(ColorManager.elevatedButtonColor),
        side: MaterialStateProperty.resolveWith((states) =>
            const BorderSide(color: ColorManager.elevatedButtonColor)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s20.r),
          ),
        ),
      ),
    ),
  );
}
