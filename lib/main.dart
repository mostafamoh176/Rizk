import 'package:flutter/material.dart';
import 'package:shanta/core/Storage/shared_pref.dart';

import 'app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppStorage.intial();
  runApp(MyApp());
}
