import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/presantion/screens/add_person/add_persone.dart';
import 'package:graduationproject/presantion/screens/find_your_lost/find_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 216, 216),
      body: Stack(children: [
        Column(children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 5.5,
                width: MediaQuery.of(context).size.height / 1,
                decoration: const BoxDecoration(
                  color: Color(0xFF151528),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  ),
                ),
                child: Column(children: [
                  Stack(
                    children: [
                      Image.asset("assets/images/logo.png"),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 70),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/colloer1.png",
                                  fit: BoxFit.fill,
                                  height: 70,
                                  width: 100,
                                ),
                                Image.asset(
                                  "assets/images/find1.png",
                                  fit: BoxFit.fill,
                                  height: 70,
                                  width: 150,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Center(
                                child: Image.asset("assets/images/image1.png",
                                    fit: BoxFit.fill)),
                          ),
                        ],
                      )
                    ],
                  ),
                ]),
              )
            ],
          ),
        ]),
        Positioned(
            top: MediaQuery.of(context).size.height / 7,
            right: 0,
            child: Image.asset("assets/images/stars 1.png")),
        Positioned(
            top: MediaQuery.of(context).size.height / 2.5,
            right: 0,
            child: Image.asset("assets/images/suspect.png")),
        Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: 0,
            child: Image.asset("assets/images/stars 2.png")),
        Positioned(
            top: MediaQuery.of(context).size.height / 1.5,
            left: 0,
            child: Row(
              children: [
                Image.asset("assets/images/child.png"),
                Text("""          Find The Lost
                SAVE
              The Day """,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200.w,
                height: 80.h,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FindHomeScren()));
                  },
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color(0xFF151528),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Find Your Own Lost ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            // fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 200.w,
                height: 80.h,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AddPersone()));
                  },
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color(0xFF151528),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Add the lost you found ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            // fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 200.w,
                height: 80.h,
                child: MaterialButton(
                  onPressed: () {},
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color(0xFF151528),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Search for lost people ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            // fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    ));
  }
}
