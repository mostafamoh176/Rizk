import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shanta/constant/color_manager.dart';
import 'package:shanta/constant/responsive.dart';
import 'package:shanta/features/Register/responsive_crossPlatform/register_cubit/register_cubit.dart';
import 'package:shanta/features/Register/units/Register_view_units.dart';
import 'package:shanta/features/splash/units/SplashViewUnits.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit=RegisterCubit.get(context);
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
                  height: sizeFromHeight(context, 1.35),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      key: cubit.myForm,
                      child: ListView(
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
                              return "Enter Your Name";
                            },
                            onSaved: (String? v) {
                              cubit.name=v!;
                            },
                            labelText: 'User Name',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          DefaultTextForm(
                            validator: (String? v) {
                              return "Enter Your Mail";
                            },
                            onSaved: (String? v) {
                              cubit.email=v!;
                            },
                            labelText: 'User Email',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          DefaultTextForm(
                            validator: (String? v) {
                              return "Enter Your Number";
                            },
                            onSaved: (String? v) {
                              cubit.phone=v!;
                            },
                            labelText: 'Mobile Phone',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          DefaultTextForm(
                            validator: (String? v) {
                              return "Enter Your Password";
                            },
                            onSaved: (String? v) {
                              cubit.password=v!;
                            },
                            labelText: 'Password',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          DefaultTextForm(
                            validator: (String? v) {
                              return "Enter Your correct password";
                            },
                            onSaved: (String? v) {},
                            labelText: 'Confirm Password',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: DefaultInkwellButton(
                              B_name: "Sign In",
                              C_color: ColorManager.primary,
                              T_color: ColorManager.white, onTap:()=> cubit.SignUp(),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: DefaultInkwellButton(
                              B_name: "Forget Password?",
                              C_color: ColorManager.white,
                              T_color: ColorManager.grey, onTap: () {},),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
