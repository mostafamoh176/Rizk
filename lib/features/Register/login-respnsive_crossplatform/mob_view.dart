import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shanta/constant/color_manager.dart';
import 'package:shanta/constant/responsive.dart';
import 'package:shanta/features/Register/units/Register_view_units.dart';
import 'package:shanta/features/splash/units/SplashViewUnits.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

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
          DefaultLoginImage(ctx: context,),
          Container(
            height:  sizeFromHeight(context,1.25),
            decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                SizedBox(
                  height: 40,
                ),
                CenterContainerText(
                  C_Text: 'SIGN IN',
                ),
                SizedBox(height: 20,),
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
                  labelText: 'Password',
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: DefaultInkwellButton(
                      B_name: "Sign In",
                      C_color: ColorManager.primary,
                      T_color: ColorManager.white, onTap: () {  },),
                ),
                DefaultInkwellButton(
                    B_name: "Forget Password?",
                    C_color: ColorManager.white,
                    T_color: ColorManager.grey, onTap: () {  },)
              ],
            ),
          )
        ],
      ),
    );
  }
}
