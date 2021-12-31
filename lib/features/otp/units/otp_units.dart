import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shanta/features/otp/cubit_OTP/otp__cubit.dart';

class TimmerCountDown extends StatelessWidget {
 BuildContext cont;
 TimmerCountDown({required this.cont});
  @override
  Widget build(cont) {
    return Center(
      child: BlocBuilder<OtpCubit, OtpState>(
        builder: (context, state) {
          var cubit = OtpCubit.get(cont);
          if (state is OtpInitial) {
            return TextButton(
                onPressed: () {
                  cubit.changeNumber();
                },
                child: Text('Resend OTP'));
          } else {
            return (Text(
                "00:${cubit.currentNumber.toString().padLeft(2, "0")}"));
          }
        },
      ),
    );
  }
}
