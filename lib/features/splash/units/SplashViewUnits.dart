import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shanta/constant/style_manager.dart';
import 'package:shanta/features/splash/cubit_splash/splash_cubit.dart';

class DefaultPageView extends StatelessWidget {
  late final mycon;

  DefaultPageView({required this.mycon});

  @override
  Widget build(mycon) {
    return BlocBuilder<SplashCubit, SplashState>(
      builder: (context, state) {
        var cubit = SplashCubit().get(context);
        return Expanded(
          child: PageView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage("${cubit.splashData[index]}"),
                ),
              );
            },
            itemCount: cubit.splashData.length,
          ),
        );
      },
    );
  }
}

class ListModel {
  String model;

  ListModel({required this.model});
}

class DefaultInkwellButton extends StatelessWidget {
  String B_name;
  late final C_color;
  late final T_color;
  late final onTap;

  DefaultInkwellButton(
      {required this.B_name,
      required this.C_color,
      required this.T_color,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 58,
        width: 249,
        decoration: BoxDecoration(
          color: C_color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            B_name,
            textAlign: TextAlign.center,
            style: GetSemiBoldStyle(color: T_color),
          ),
        ),
      ),
    );
  }
}
