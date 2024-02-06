import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class lostcal extends StatelessWidget {
  const lostcal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/image1.png",
              width: 300,
              height: 100,
            ),
            Image.asset(
              "assets/images/colloer2.png",
              height: 150,
              width: 350,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Text(
                      "Find The LOST",
                      style: TextStyle(
                          fontSize: 40.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 40.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "The Day",
                      style: TextStyle(
                          fontSize: 40.sp, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Image.asset("assets/images/suspect.png")
              ],
            ),
            Stack(
              children: [
                Image.asset(
                  "assets/images/Ellipse 17.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height / 2.0,
                    right: 0,
                    left: 0,
                    child: Image.asset(
                      "assets/images/Ellipse 18.png",
                      fit: BoxFit.cover,
                    )),
                Positioned(
                    top: MediaQuery.of(context).size.height / 1.9,
                    right: 0,
                    left: 0,
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(
                            "assets/images/Ellipse 16.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
