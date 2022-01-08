import 'package:flutter/material.dart';
import 'package:shanta/constant/color_manager.dart';

class DefaultDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorManager.primary,
      child: Container(
        child: Column(
          children: [
            DrawerHeader(
              child: CircleAvatar(
                radius:25,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(23),
                  child: Image(
                    height: 46,
                    width: 46,
                    image: AssetImage("assets/images/msg.png"),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
