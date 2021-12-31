import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shanta/constant/color_manager.dart';
import 'package:shanta/constant/style_manager.dart';

class DefaultLoginImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 130,
        child: Image(
          image: AssetImage("assets/images/s1.png"),
        ),
      ),
    );
  }
}

class DefaultTextForm extends StatelessWidget {
  Function(String?)? onSaved;
  String Function(String?)? validator;
  String labelText;

  DefaultTextForm(
      {required this.labelText,
      required this.onSaved,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 50,
        color: ColorManager.grey3,
        child: TextFormField(
          validator: validator,
          onSaved: onSaved,
          cursorColor: ColorManager.grey3,
          decoration: InputDecoration(
            fillColor: ColorManager.grey3,
            labelText: labelText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorManager.grey),
            ),
          ),
        ),
      ),
    );
  }
}

class CenterContainerText extends StatelessWidget {
  String C_Text;

  CenterContainerText({required this.C_Text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            C_Text,
            style: GetBoldStyle(color: ColorManager.primary),
          ),
        ),
      ],
    );
  }
}
