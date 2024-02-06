import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/presantion/screens/find_your_lost/form_find_person.dart';

class FindHomeScren extends StatelessWidget {
  const FindHomeScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(children: [
        Column(children: [
          Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/colloer1.png",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Image.asset(
                    "assets/images/paint.png",
                    fit: BoxFit.fitWidth,
                    width: 200,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    "Find  Your Own Lost ",
                    style: TextStyle(fontSize: 35.sp),
                  ),
                ),
              )
            ],
          )
        ]),
        Stack(
          children: [
            Positioned(
              top: 70.h,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 1,
                width: MediaQuery.of(context).size.height / 1.9,
                decoration: const BoxDecoration(
                  color: Color(0xFF151528),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(100.0),
                    topLeft: Radius.circular(100.0),
                  ),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/colloer3.png",
                      height: MediaQuery.of(context).size.height / 1.1,
                      width: MediaQuery.of(context).size.height / 2,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Center(
                        child: Column(
                          children: [
                            Positioned(
                              top: 10.h,
                              left: MediaQuery.of(context).size.width / 4,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30)),
                                height: 140.h,
                                width: 160.w,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/image-gallery 1.png",
                                      fit: BoxFit.cover,
                                      width: 100.w,
                                      height: 100,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Add Images ",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            FormFindPerson()
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ])),
    );
  }
}
