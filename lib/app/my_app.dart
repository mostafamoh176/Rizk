import 'package:flutter/material.dart';
import 'package:shanta/features/Register/login-respnsive_crossplatform/mob_view.dart';
import 'package:shanta/features/Register/responsive_crossPlatform/register_respnsive_crossplatform/mob_view.dart';
import 'package:shanta/features/otp/responsive_crossplatform/mob_view.dart';
import 'package:shanta/features/otp/units/otp_units.dart';
import 'package:shanta/features/splash/splash-responsive_crssplatform/mob_view.dart';

class MyApp extends StatelessWidget {
  MyApp._internal();

  static final MyApp instance = MyApp._internal();

  factory MyApp() => instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OTP_View(),
    );
  }
}
