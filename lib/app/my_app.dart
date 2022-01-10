import 'package:flutter/material.dart';
import 'package:shanta/constant/routes/routes_manager.dart';
import 'package:shanta/core/Storage/shared_pref.dart';
import 'package:shanta/features/Home/Home-responsive_crssplatform/mob_view.dart';
import 'package:shanta/features/splash/splash-responsive_crssplatform/mob_view.dart';

class MyApp extends StatelessWidget {
  MyApp._internal();

  static final MyApp instance = MyApp._internal();

  factory MyApp() => instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      home:M_SplashScreenView(),
    );
  }
}
