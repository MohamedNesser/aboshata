import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/presantion/screens/add_person/form_add_person.dart';

class AddPersone extends StatelessWidget {
  const AddPersone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Stack(
            children: [
              Image.asset("assets/images/colloer1.png"),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  "Add the lost you found ",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Positioned(
                  top: 40.h,
                  right: 0,
                  left: MediaQuery.of(context).size.width / 2.1,
                  child: Image.asset(
                    "assets/images/colloer2.png",
                    fit: BoxFit.fill,
                    width: 100,
                    height: 250,
                  )),
              Positioned(
                top: 60.h,
                left: MediaQuery.of(context).size.width / 4,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 3, 7, 27),
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
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Stack(
            children: [
              Positioned(
                  top: 120.h,
                  right: 0,
                  left: 0,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        child: Image.asset(
                          "assets/images/Rectangle 27.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 80.h),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/recruitment 1.png",
                                fit: BoxFit.fill,
                              ),
                              Image.asset(
                                "assets/images/undraw1.png",
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: SingleChildScrollView(
                                  physics: ScrollPhysics(),
                                  child: FormAddPersone()),
                            ),
                          )
                        ]),
                      ),
                    ],
                  )),
            ],
          )
        ]),
      ),
    );
  }
}
