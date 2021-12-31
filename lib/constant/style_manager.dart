import 'package:flutter/cupertino.dart';

import 'fonts_manager.dart';

TextStyle GetTextStyle({color, fontSize, fontWeight, fontFamily}) {
  return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily);
}

TextStyle GetSemiBoldStyle({color,fontSize}) {
  return GetTextStyle(
    fontFamily: FontConstrains.mainFamily,
    fontWeight: FontWeightManager.semiBold,
    color: color,
    fontSize: FontSizeManager.s16,
  );
}

TextStyle GetBoldStyle({color}) {
  return GetTextStyle(
    fontFamily: FontConstrains.mainFamily,
    fontWeight: FontWeightManager.bold,
    color: color,
    fontSize: FontSizeManager.s20,
  );
}

TextStyle GetMediuemStyle({color,fontsize}) {
  return GetTextStyle(
    fontFamily: FontConstrains.mainFamily,
    fontWeight: FontWeightManager.medieum,
    color: color,
    fontSize: FontSizeManager.s14,
  );
}

TextStyle GetregularStyle({color}) {
  return GetTextStyle(
      fontFamily: FontConstrains.mainFamily,
      fontWeight: FontWeightManager.regiular,
      color: color,
      fontSize: FontSizeManager.s14);
}

TextStyle GetLightStyle({color}) {
  return GetTextStyle(
    fontFamily: FontConstrains.mainFamily,
    fontWeight: FontWeightManager.light,
    color: color,
    fontSize: FontSizeManager.s12,
  );
}
