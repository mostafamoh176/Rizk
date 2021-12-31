import 'package:flutter/material.dart';
import 'package:shanta/constant/color_manager.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        elevation: 0,
      ),
      body: ListView(
        children: [
          
        ],
      ),
    );
  }
}
