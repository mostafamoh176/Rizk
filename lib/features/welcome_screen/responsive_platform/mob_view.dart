import 'package:flutter/material.dart';
import 'package:shanta/constant/color_manager.dart';
import 'package:shanta/constant/style_manager.dart';

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
          SizedBox(
            height: 50,
          ),
          Text(
            ///TODO: here the text of the new user
            "Hello Mostafa",
            style: GetXBoldStyle(
              color: ColorManager.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Welcome To Rizk",
            style: GetSemiBoldStyle(
              color: ColorManager.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height:30 ,),
          CircleAvatar(
            backgroundColor: ColorManager.white,
            radius: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(47.5),
              child: Image(
                width: 95,
                image: AssetImage("assets/images/p.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
