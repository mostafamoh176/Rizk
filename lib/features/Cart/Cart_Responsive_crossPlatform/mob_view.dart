import 'package:flutter/material.dart';
import 'package:shanta/constant/color_manager.dart';
import 'package:shanta/constant/style_manager.dart';
import 'package:shanta/features/splash/units/SplashViewUnits.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

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
              "Your Cart",
              style: GetSemiBoldStyle(color: ColorManager.grey),
            )
          ],
        ),
        backgroundColor: ColorManager.white,
      ),
      body: Column(
        children: [
          Container(
            height: 500,
            child: ListView.builder(
                itemCount: 10, itemBuilder: (context, index) => DefaultCart()),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "TOTAL AMOUNT",
            style: GetSemiBoldStyle(color: ColorManager.grey2),
          ),
          Text(
            "\$1700.00",
            style: GetBoldStyle(color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          DefaultInkwellButton(
              B_name: "CHECKOUT",
              C_color: ColorManager.primary,
              T_color: ColorManager.white, onTap: () {  },)
        ],
      ),
    );
  }
}

class DefaultCart extends StatelessWidget {
  const DefaultCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              child: Image(
                  height: 80,
                  width: 100,
                  image: AssetImage("assets/images/p.jpg"),
                  fit: BoxFit.fill),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ramni Chair"),
                Text(
                  "\$1700",
                  style: GetregularStyle(color: ColorManager.grey),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: ColorManager.grey3,
                      radius: 20,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          size: 14,
                          color: ColorManager.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("1"),
                    ),
                    CircleAvatar(
                      backgroundColor: ColorManager.grey3,
                      radius: 20,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove,
                          size: 14,
                          color: ColorManager.grey,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
