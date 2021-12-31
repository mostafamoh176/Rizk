import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shanta/constant/color_manager.dart';
import 'package:shanta/features/Register/units/Register_view_units.dart';
import 'package:shanta/features/splash/units/SplashViewUnits.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.primary,
        ),
        elevation: 0,
      ),
      body: ListView(
        children: [
          DefaultLoginImage(),
          Expanded(
            child: Container(
              height: 700,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  CenterContainerText(
                    C_Text: 'SIGN UP',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DefaultTextForm(
                    validator: (String? v) {
                      return "valid";
                    },
                    onSaved: (String? v) {},
                    labelText: 'User Name',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DefaultTextForm(
                    validator: (String? v) {
                      return "valid";
                    },
                    onSaved: (String? v) {},
                    labelText: 'User Email',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DefaultTextForm(
                    validator: (String? v) {
                      return "valid";
                    },
                    onSaved: (String? v) {},
                    labelText: 'Mobile Phone',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DefaultTextForm(
                    validator: (String? v) {
                      return "valid";
                    },
                    onSaved: (String? v) {},
                    labelText: 'Password',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DefaultTextForm(
                    validator: (String? v) {
                      return "valid";
                    },
                    onSaved: (String? v) {},
                    labelText: 'Confirm Password',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DefaultInkwellButton(
                      B_name: "Sign In",
                      C_color: ColorManager.primary,
                      T_color: ColorManager.white),
                  DefaultInkwellButton(
                      B_name: "Forget Password?",
                      C_color: ColorManager.white,
                      T_color: ColorManager.grey)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
