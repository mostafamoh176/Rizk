import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Route<dynamic>? onGenerateRoute(RouteSettings settings) => null;

class MagicRoute {
  static BuildContext currentContext = navigatorKey.currentContext!;

  static Future<dynamic> navigateTo(Widget page) =>
      navigatorKey.currentState!.push(MaterialPageRoute(builder: (_) => page));

  static Future<dynamic> navigatorAndPopAll(Widget page) =>
      navigatorKey.currentState!.pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => page), (_) => false);

  static Future<dynamic> navigatorAndPopUntilFirstPage(Widget page) =>
      navigatorKey.currentState!.pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => page), (_) => _.isFirst);

  static Future<dynamic> navigatorAndReplacement(Widget page) =>
      navigatorKey.currentState!
          .pushReplacement(MaterialPageRoute(builder: (_) => page));
}
