import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());
  SplashCubit get(context)=>BlocProvider.of(context);
  List splashData = [
    "assets/images/s1.png",
    "assets/images/s2.png",
    "assets/images/s3.png"
  ];
}
