import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/images/Rectangle 50.png",
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width / 1,
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Update your password  ",
                          style:
                              TextStyle(color: Colors.white, fontSize: 30.sp),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Expanded(
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/Rectangle 9.png",
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width / 1,
                    ),
                    Positioned(
                      top: 20,
                      right: 20,
                      left: 20,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2.6,
                        width: MediaQuery.of(context).size.width / 1,
                        decoration: BoxDecoration(
                            color: Color(0XFF151528),
                            borderRadius: BorderRadius.circular(40)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/padlock 3.png"),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    height: 40.h,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff151528),
                                    ),
                                    child: TextField(
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.white),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xff151528),
                                          ),
                                        ),
                                        hintStyle: TextStyle(
                                            fontSize: 16.sp,
                                            color: Colors.white),
                                        hintText: "Enter new Password ",
                                        prefixIcon: Icon(
                                          Icons.lock,
                                          size: 30.h,
                                          color:
                                              Color.fromARGB(255, 22, 165, 248),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 22, 165, 248),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  SizedBox(
                                    width: 170.w,
                                    child: MaterialButton(
                                      onPressed: () {},
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      color: Color(0xff50C0E1),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Update ",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
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
                    Positioned(
                        bottom: 50,
                        left: 50,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Row(
                            children: [
                              Image.asset("assets/images/back.png"),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Back to profile ",
                                style: TextStyle(fontSize: 24.sp),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 24,
            right: 20,
            child: Image.asset(
              "assets/images/pass.png",
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width / 1,
            ),
          ),
        ],
      ),
    ));
  }
}
