import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shanta/Widgets/showSnackBar.dart';
import 'package:shanta/constant/routes/routes_manager.dart';
import 'package:shanta/core/CashHelper/dio_helper.dart';
import 'package:shanta/core/Storage/shared_pref.dart';
import 'package:shanta/features/Home/Home-responsive_crssplatform/mob_view.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  static RegisterCubit get(context) => BlocProvider.of(context);
  late String email;
  late String password;
  late String phone;
  late String name;
  GlobalKey<FormState> myForm = GlobalKey<FormState>();

  Future<void> SignUp() async {
    if (!myForm.currentState!.validate()) return null;
    print("mostafa");
    myForm.currentState!.save();
    emit(RegisterLoading());
    final body = {
      "email": email,
      "password": password,
      "returnSecureToken": true
    };
    try {
      final response =
          await DioHelper.postData("signUp", Data: body);
      if (response.statusCode == 200) {
        await AppStorage.cashUserData(name, email, response.data["idToken"],
            response.data["localId"], phone);
        MagicRoute.navigatorAndPopAll(HomeView());
        print(response.data);
      } else {
    showSnackBar(response.data["error"]["message"], isError: true);
      }
    } on DioError catch (e) {
    showSnackBar(e.message, isError: true);
      print(e.message.toString());
    } catch (e) {
    showSnackBar(e.toString(), isError: true);
      print(e.toString());
    }
    emit(RegisterInitial());
  }
}
