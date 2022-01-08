import 'package:dio/dio.dart';

class DioHelper {
  static const BASE_URL = "https://identitytoolkit.googleapis.com/v1/accounts:";
  static const API_KEY = "AIzaSyC81g-FhTnbwOdb8pq-abVD_p0Seo2Q-DQ";
  static Dio dio = Dio()
    ..options.validateStatus = (v) => v! < 500;

  static Future<Response<dynamic>> postData(String path,{dynamic Data}) async =>
      await dio.post(BASE_URL + path + "?key" + API_KEY, data: Data);
}