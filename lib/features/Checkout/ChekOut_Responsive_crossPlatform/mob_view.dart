import 'package:flutter/material.dart';
import 'package:shanta/constant/color_manager.dart';
import 'package:shanta/constant/style_manager.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back, color: ColorManager.grey),
            ),
            Text(
              "Checkout",
              style: GetSemiBoldStyle(color: ColorManager.grey),
            )
          ],
        ),
        backgroundColor: ColorManager.white,
      ),

    );
  }
}
