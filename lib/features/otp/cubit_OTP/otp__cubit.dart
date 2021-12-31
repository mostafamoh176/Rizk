import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'otp__state.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit() : super(OtpInitial());
  Timer? _timer;

  static OtpCubit get(context) => BlocProvider.of(context);

  late int currentNumber;

  void changeNumber() {
    currentNumber = 10;
    _timer = Timer.periodic(
      Duration(seconds: 1),
      (t) {
        if (currentNumber == 0) {
          _timer!.cancel();
          emit(OtpInitial());
          print("mostafa");
        } else {
          currentNumber--;
          emit(OtpCountDown());
        }
      },
    );
  }

  @override
  Future<void> close() {
    if (_timer != null) {
      _timer!.cancel();
    }
    return super.close();
  }
}
