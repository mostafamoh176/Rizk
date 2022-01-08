import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shanta/constant/color_manager.dart';
import 'package:shanta/constant/style_manager.dart';
import 'package:shanta/features/Register/units/Register_view_units.dart';

class HomeView extends StatelessWidget {
  List<model> myList = [
    model(txt: "All"),
    model(txt: "Electronics And Applications"),
    model(txt: "Shirt"),
    model(txt: "Mo"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      drawer: Drawer(
        backgroundColor: ColorManager.primary,
        child: Container(
          child: Column(
            children: [
              DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundColor: ColorManager.white,
                        radius: 30,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: Image(
                            height: 58,
                            width: 58,
                            image: AssetImage("assets/images/p.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Pankaj Patel",
                      style: GetBoldStyle(color: ColorManager.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "mostafamoh176@gmail.coms",
                      style: GetSemiBoldStyle(color: ColorManager.white),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                endIndent: 30,
                indent: 30,
                color: ColorManager.white,
              ),
              Container(
                height: 500,
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.home_outlined,
                        color: ColorManager.white,
                      ),
                      title: Text(
                        "Home",
                        style: GetregularStyle(
                          color: ColorManager.white,
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
                    ListTile(
                      leading: Icon(
                        Icons.shopping_cart_outlined,
                        color: ColorManager.white,
                      ),
                      title: Text(
                        "My Cart",
                        style: GetregularStyle(
                          color: ColorManager.white,
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
                    ListTile(
                      leading: Icon(
                        Icons.check_box_outline_blank_outlined,
                        color: ColorManager.white,
                      ),
                      title: Text(
                        "Upcoming Orders",
                        style: GetregularStyle(
                          color: ColorManager.white,
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
                    ListTile(
                      leading: Icon(
                        Icons.card_giftcard,
                        color: ColorManager.white,
                      ),
                      title: Text(
                        "Offer Zone",
                        style: GetregularStyle(
                          color: ColorManager.white,
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
                    ListTile(
                      leading: Icon(
                        Icons.person_outline_outlined,
                        color: ColorManager.white,
                      ),
                      title: Text(
                        "My Account",
                        style: GetregularStyle(
                          color: ColorManager.white,
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
                    ListTile(
                      leading: Icon(
                        Icons.chat_bubble_outlined,
                        color: ColorManager.white,
                      ),
                      title: Text(
                        "My Chats",
                        style: GetregularStyle(
                          color: ColorManager.white,
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
                    ListTile(
                      leading: Icon(
                        Icons.help_outline,
                        color: ColorManager.white,
                      ),
                      title: Text(
                        "help",
                        style: GetregularStyle(
                          color: ColorManager.white,
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
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.segment,
              color: Colors.black,
            ),
          );
        }),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_alert_outlined,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ),
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                                color: ColorManager.grey3,
                                borderRadius: BorderRadius.circular(5)),
                            height: 50,
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: ColorManager.grey2,
                                ),
                                hintText: "Search",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: ColorManager.grey3,
                                borderRadius: BorderRadius.circular(5)),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.filter_alt_outlined,
                                color: ColorManager.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "TRENDING PRODUCTS",
                          style: GetSemiBoldStyle(),
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "See All",
                              style: TextStyle(
                                color: ColorManager.primary,
                              ),
                            )),
                      ],
                    ),
                    Expanded(
                      flex: 5,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return defaultCard();
                          }),
                    ),
                    Row(
                      children: [
                        Text(
                          "TRENDING PRODUCTS",
                          style: GetSemiBoldStyle(),
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "See All",
                              style: TextStyle(
                                color: ColorManager.primary,
                              ),
                            )),
                      ],
                    ),
                    Expanded(
                      flex: 1,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: myList.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            left: 20,
                            bottom: 10,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorManager.grey3,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {},
                                child: Text("${myList[index].txt}"),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return defaultCard();
                          }),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorManager.primary,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.aspect_ratio_rounded,
                color: Colors.white,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: "")
        ],
      ),
    );
  }

  defaultCard() {
    return Card(
      elevation: 5,
      child: Container(
        width: 180,
        height: 50,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Container(
                height: 180,
                width: 180,
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/p.jpg"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Here Enter The Text",
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Text("\$1000"),
                  Spacer(),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: ColorManager.grey3,
                    child: Icon(
                      Icons.add_shopping_cart_outlined,
                      color: ColorManager.primary,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class model {
  late String txt;

  model({required this.txt});
}
