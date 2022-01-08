import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shanta/constant/color_manager.dart';
import 'package:shanta/constant/style_manager.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: ColorManager.primary),
        elevation: 0,
        backgroundColor: ColorManager.primary,
        leadingWidth: 50,
        title: Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            Text(
              "My Account",
              style: GetSemiBoldStyle(
                color: ColorManager.white,
              ),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(50)),
                height: 30,
                width: 80,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FittedBox(
                    child: Text(
                      "Edit Profile",
                      textAlign: TextAlign.center,
                      style: GetregularStyle(color: ColorManager.primary),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: ColorManager.primary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CircleAvatar(
              backgroundColor: ColorManager.white,
              radius: 56,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(55),
                child: Image(
                  image: AssetImage("assets/images/p.jpg"),
                  width: 110,
                  height: 110,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Pankaj Patel",
            style: GetBoldStyle(color: ColorManager.white),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "mostafamoh176@gmail.com",
            style: GetregularStyle(color: ColorManager.grey3),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: ListView.builder(
                  itemCount: 4,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 10,
                        color: ColorManager.grey3,
                        child: ListTile(
                              leading: Icon(
                                Icons.directions_car,
                                color: ColorManager.grey,
                              ),
                              title: Text(
                                "Upcomming Orders",
                                style: GetregularStyle(
                                  color: Colors.black,
                                ),
                              ),
                              trailing: Container(
                                height: 15,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: ColorManager.white,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text(
                                  "5",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: ColorManager.primary),
                                ),
                              ),
                            ),
                      ),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
