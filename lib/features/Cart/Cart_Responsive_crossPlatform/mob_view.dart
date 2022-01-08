import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shanta/constant/color_manager.dart';
import 'package:shanta/constant/style_manager.dart';
import 'package:shanta/features/splash/units/SplashViewUnits.dart';

class FilterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
        backgroundColor: ColorManager.white,
        leadingWidth: 100,
        elevation: 0,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
            Text(
              "Filter",
              style: GetSemiBoldStyle(color: Colors.black),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Categories",
                  style: GetBoldStyle(color: Colors.black),
                ),
              ),
            ),
            CheckBoxInListview(),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Brand",
                  style: GetBoldStyle(color: Colors.black),
                ),
              ),
            ),
            CheckBoxInListview(),
            DefaultInkwellButton(
                B_name: "Apply Filter",
                C_color: ColorManager.primary,
                T_color: ColorManager.white)
          ],
        ),
      ),
    );
  }
}

class CheckBoxInListview extends StatefulWidget {
  @override
  _CheckBoxInListviewState createState() => _CheckBoxInListviewState();
}

class _CheckBoxInListviewState extends State<CheckBoxInListview> {
  bool _isChecked = true;

  List<String> _texts = [
    "Beds",
    "Cabinets",
    "Chairs And Seating",
    "cheats",
    "Clocks"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        padding: EdgeInsets.all(8.0),
        children: _texts
            .map((text) => CheckboxListTile(
                  title: Text(text),
                  value: _isChecked,
                  activeColor: ColorManager.primary,
                  onChanged: (val) {
                    setState(() {
                      _isChecked = val!;
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
