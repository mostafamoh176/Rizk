import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shanta/constant/color_manager.dart';
import 'package:shanta/constant/style_manager.dart';
import 'package:shanta/features/splash/cubit_splash/splash_cubit.dart';
import 'package:shanta/features/splash/units/SplashViewUnits.dart';

class M_SplashScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.primary,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManager.primary,
          ),
        ),
        backgroundColor: ColorManager.primary,
        body: Column(
          children: [
            DefaultPageView(
              mycon: context,
            ),
            SizedBox(
              height: 10,
            ),
            DefaultInkwellButton(
              B_name: 'Get Started',
              C_color: ColorManager.white,
              T_color: ColorManager.primary,
            ),
            SizedBox(
              height: 10,
            ),
            DefaultInkwellButton(
              B_name: 'SIGN IN',
              C_color: ColorManager.primary,
              T_color: ColorManager.white,
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
