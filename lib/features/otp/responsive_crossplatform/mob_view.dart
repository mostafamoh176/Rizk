import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shanta/constant/color_manager.dart';
import 'package:shanta/constant/responsive.dart';
import 'package:shanta/constant/style_manager.dart';
import 'package:shanta/features/Register/units/Register_view_units.dart';
import 'package:shanta/features/otp/cubit_OTP/otp__cubit.dart';
import 'package:shanta/features/otp/units/otp_units.dart';
import 'package:shanta/features/splash/units/SplashViewUnits.dart';

class OTP_View extends StatelessWidget {
  const OTP_View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpCubit()..changeNumber(),
      child: Scaffold(
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
            Container(
              height: sizeFromHeight(context, 1),
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
                    C_Text: 'OTP VERIFICATION',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "OTP Has Been Sent To 00000",
                          style: GetregularStyle(color: ColorManager.grey),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 40.0,
                      right: 40.0,
                      top: 20.0,
                    ),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 4,
                      onChanged: (v) {},
                      obscureText: true,
                      blinkWhenObscuring: true,
                      animationType: AnimationType.fade,
                      validator: (v) {
                        if (v!.length < 3) {
                          return "I'm from validator";
                        } else {
                          return null;
                        }
                      },
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        inactiveFillColor: ColorManager.primary,
                        activeFillColor: Colors.grey.shade100,
                        selectedFillColor: Colors.grey.shade100,
                        activeColor: Colors.grey,
                      ),
                      cursorColor: Colors.black,
                      animationDuration: Duration(milliseconds: 300),
                      enableActiveFill: true,
                      keyboardType: TextInputType.number,
                      boxShadows: [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: Colors.black12,
                          blurRadius: 10,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  DefaultInkwellButton(
                    B_name: "VERIFY OTP",
                    C_color: ColorManager.primary,
                    T_color: ColorManager.white,
                  ),
                  SizedBox(height: 20,),
                  TimmerCountDown(cont: context,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
