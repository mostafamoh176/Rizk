import 'package:shared_preferences/shared_preferences.dart';

class AppStorage {
  static late SharedPreferences _sharedPreferences;

  static Future<void> intial() async =>
      _sharedPreferences = await SharedPreferences.getInstance();

  static Future<void>cashUserData(
    String name,
    String email,
    String apiToken,
    String uid,
    String phone,
  ) async {
    _sharedPreferences.setString("Email", email);
    _sharedPreferences.setString("ApiToken", apiToken);
    _sharedPreferences.setString("UID Key", uid);
    _sharedPreferences.setString("phone", phone);
    _sharedPreferences.setString("name", name);
  }
  static bool get isLogged => _sharedPreferences.containsKey("ApiToken");

  static String get email => _sharedPreferences.getString("Email")!;

  static String get ApiToken => _sharedPreferences.getString("ApiToken")!;

  static String get uid => _sharedPreferences.getString("UID Key")!;
}
