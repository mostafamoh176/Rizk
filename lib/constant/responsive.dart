import 'package:flutter/material.dart';
double sizeFromHeight(BuildContext context,double fraction){
  final mediaQuerry=MediaQuery.of(context);
  final height=mediaQuerry.size.height;
  fraction=(height-mediaQuerry.padding.top-AppBar().preferredSize.height)/fraction;
  return fraction;
}
double sizeFromWidth(BuildContext context,double fraction){
  final mediaQuerry=MediaQuery.of(context);
  final width=mediaQuerry.size.width;
  fraction=(width)/fraction;
  return fraction;

}