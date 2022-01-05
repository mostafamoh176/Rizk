import 'package:flutter/material.dart';

class FilterView extends StatelessWidget {
  const FilterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.close),
            )
          ],
        ),
      ),
    );
  }
}
