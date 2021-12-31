import 'package:flutter/material.dart';
import 'package:shanta/constant/style_manager.dart';
import 'color_manager.dart';
import 'fonts_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.priimaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.priimaryOpacity70,
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey),
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: FontSizeManager.s4,
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: GetregularStyle(color: ColorManager.white),
      centerTitle: true,
      backgroundColor: ColorManager.primary,
      elevation: FontSizeManager.s4,
      shadowColor: ColorManager.priimaryOpacity70,
    ),
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.priimaryOpacity70,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: GetregularStyle(color: ColorManager.white),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(FontSizeManager.s12),
        ),
      ),
    ),
    textTheme: TextTheme(
      headline1: GetSemiBoldStyle(
        color: ColorManager.darkOrange,
        fontSize: FontSizeManager.s16,
      ),
      subtitle1: GetMediuemStyle(
        color: ColorManager.lightGrey,
        fontsize: FontSizeManager.s14,
      ),
      caption: GetregularStyle(
        color: ColorManager.grey1,
      ),
      bodyText1: GetregularStyle(
        color: ColorManager.grey,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(8),
      hintStyle: GetregularStyle(
        color: ColorManager.grey1,
      ),
      labelStyle: GetMediuemStyle(
        color: ColorManager.darkOrange,
      ),
      errorStyle: GetregularStyle(
        color: ColorManager.error,
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.grey,
            width: 1.5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          )),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.primary,
            width: 1.5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          )),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.error,
            width: 1.5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          )),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: 1.5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
    ),
  );
}
