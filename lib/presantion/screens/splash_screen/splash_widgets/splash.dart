import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/presantion/screens/Login_screen/login_page.dart';
import 'package:graduationproject/presantion/screens/signup_screen/signup_screen.dart';
import 'package:graduationproject/presantion/screens/splash_screen/splash_widgets/buttom_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("assets/images/image2.png",
                      fit: BoxFit.fill)),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height / 10,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/colloer5.png",
                          fit: BoxFit.fill),
                    ],
                  ),
                )),
            Positioned(
              top: MediaQuery.of(context).size.height / 4,
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        """                Find The Lost
                        SAVE
                      The Day """,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Image.asset("assets/images/suspect1.png",
                          fit: BoxFit.fill),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2.5,
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "assets/images/Ellipse 5.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 60,
                      child: Stack(children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(
                            "assets/images/Ellipse 4.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 50,
                          child: Image.asset(
                            "assets/images/grob3.png",
                            fit: BoxFit.cover,
                            height: 120,
                          ),
                        ),
                        Positioned(
                          top: 20,
                          left: 100,
                          child: Image.asset(
                            "assets/images/Group 1.png",
                            fit: BoxFit.cover,
                            height: 120,
                          ),
                        ),
                        Positioned(
                          top: 20,
                          left: 220,
                          child: Image.asset(
                            "assets/images/Group 3.png",
                            fit: BoxFit.cover,
                            height: 80,
                          ),
                        ),
                        Positioned(
                          top: 45,
                          left: 280,
                          child: Image.asset(
                            "assets/images/grob4.png",
                            fit: BoxFit.cover,
                            height: 120,
                          ),
                        ),
                      ]),
                    ),
                    Positioned(
                      top: 150,
                      child: Stack(children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(
                            "assets/images/Ellipse 1.png",
                            fit: BoxFit.fill,
                            height: MediaQuery.of(context).size.width / 1.3,
                          ),
                        ),
                        ButtomSplash()
                      ]),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
