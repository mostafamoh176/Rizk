import 'package:flutter/material.dart';
import 'package:shanta/constant/routes/routes_manager.dart';

showSnackBar(
  String message,{bool isError=false}
) {
  ScaffoldMessenger.of(MagicRoute.currentContext).showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: isError?Colors.red:Colors.green,
    ),
  );
}
