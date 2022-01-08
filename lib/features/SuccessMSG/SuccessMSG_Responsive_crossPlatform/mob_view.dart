import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shanta/constant/color_manager.dart';
import 'package:shanta/constant/style_manager.dart';
import 'package:shanta/features/splash/units/SplashViewUnits.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.white,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: ColorManager.white),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: ListView(
          children: [
            Image(
              image: AssetImage("assets/images/msg.png"),
            ),
            Text(
              "Your Order \n Has Been Accepted",
              textAlign: TextAlign.center,
              style: GetXBoldStyle(color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Your Item Has Been Placed and is on\n it's way to being processed",
                textAlign: TextAlign.center,
                style: GetSemiBoldStyle(color: ColorManager.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DefaultInkwellButton(
                B_name: "Track Order",
                C_color: ColorManager.primary,
                T_color: ColorManager.white, onTap: () {  },
              ),
            ),
            DefaultInkwellButton(
              B_name: "Back To Home",
              C_color: ColorManager.white,
              T_color: ColorManager.primary, onTap: () {  },
            )
          ],
        ),
      ),
    );
  }
}
