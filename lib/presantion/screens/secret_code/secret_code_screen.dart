import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/presantion/screens/Login_screen/login_page.dart';
import 'package:graduationproject/presantion/screens/forgot_password/form_forgot_%20password.dart';
import 'package:graduationproject/presantion/screens/secret_code/secret_code_form.dart';

class SecretCodeScreen extends StatelessWidget {
  const SecretCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                child: Stack(children: [
                  Image.asset("assets/images/Ellipse 19.png"),
                  Container(
                    margin: EdgeInsets.all(20.w),
                    child: Column(
                      children: [
                        Text(
                          "Secret",
                          style: TextStyle(
                              color: Color(0x00000000ffFFFFFF),
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Code",
                          style: TextStyle(
                              color: Color(0x00000000ffFFFFFF),
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ])),
            Positioned(
                top: MediaQuery.of(context).size.height / 3.5,
                right: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/Ellipse 18.png",
                  fit: BoxFit.cover,
                )),
            Positioned(
                top: MediaQuery.of(context).size.height / 2.8,
                right: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/Ellipse 17.png",
                  fit: BoxFit.cover,
                )),
            Positioned(
                top: MediaQuery.of(context).size.height / 2.3,
                right: 0,
                left: 0,
                child: Stack(children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/images/Ellipse 16.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ])),
            Positioned(
                top: 40.h,
                right: 0,
                left: MediaQuery.of(context).size.width / 2.1,
                child: Image.asset(
                  "assets/images/secret.png",
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height / 3,
                )),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 2.1),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                          height: 80.h,
                          width: MediaQuery.of(context).size.height / 1,
                          child: Image.asset("assets/images/image1.png")),
                      SecretCode(),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.arrow_back_ios_new_outlined,
                                  color: Colors.white),
                              Text(
                                "   Back to login ",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 128, 125, 125)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
