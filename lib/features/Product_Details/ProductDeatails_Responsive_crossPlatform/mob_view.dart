import 'package:flutter/material.dart';
import 'package:shanta/constant/color_manager.dart';
import 'package:shanta/constant/style_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetails extends StatelessWidget {
  PageController controller = PageController();
  PageController dotcontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 200,
              child: PageView.builder(
                  controller: controller,
                  itemCount: 3,
                  onPageChanged: (v) {
                    dotcontroller.nextPage(
                        duration: (Duration(milliseconds: 1)),
                        curve: Curves.bounceIn);
                  },
                  itemBuilder: (contex, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        image: AssetImage("assets/images/p.jpg"),
                        fit: BoxFit.fill,
                      ),
                    );
                  }),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: dotcontroller,
                count: 3,
                axisDirection: Axis.horizontal,
                effect: SlideEffect(
                  spacing: 10.0,
                  radius: 2.0,
                  dotWidth: 20.0,
                  dotHeight: 16.0,
                  paintStyle: PaintingStyle.stroke,
                  strokeWidth: 1.5,
                  dotColor: Colors.grey,
                  activeDotColor: ColorManager.primary,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      Text("Ramni Chair"),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.star_border,
                        color: ColorManager.primary,
                      ),
                      Text("4.5")
                    ],
                  ),
                  Spacer(),
                  Text(
                    "\$1700",
                    style: TextStyle(
                        color: ColorManager.primary,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Description",
                    style: GetSemiBoldStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Reviews",
                    style: GetSemiBoldStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Offers",
                    style: GetSemiBoldStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(),
                  onPressed: () {},
                  child: Text(
                    "Policy",
                    style: GetSemiBoldStyle(color: Colors.black),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
