import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/data/model/mylost_model/mylost.dart';

class FormUpdateloster extends StatefulWidget {
  FormUpdateloster({
    Key? key,
  }) : super(key: key);
  @override
  State<FormUpdateloster> createState() => _FormUpdatelosterState();
}

class _FormUpdatelosterState extends State<FormUpdateloster> {
  final _globalekey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(height: 5.h),
        Form(
            key: _globalekey,
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: TextFormField(
                    initialValue: 'Initial value',
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 3, color: Colors.blue), //<-- SEE HERE
                      ),
                      suffixIcon: GestureDetector(
                          child: Image.asset("assets/images/pen 7.png")),
                      contentPadding: EdgeInsets.fromLTRB(10, 2, 10, 0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 3, color: Colors.blue)),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: TextFormField(
                    initialValue: 'Initial value',
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 3, color: Colors.blue), //<-- SEE HERE
                      ),
                      suffixIcon: GestureDetector(
                          child: Image.asset("assets/images/pen 7.png")),
                      contentPadding: EdgeInsets.fromLTRB(10, 2, 10, 0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 3, color: Colors.blue)),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: TextFormField(
                    initialValue: 'Initial value',
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 3, color: Colors.blue), //<-- SEE HERE
                      ),
                      suffixIcon: GestureDetector(
                          child: Image.asset("assets/images/pen 7.png")),
                      contentPadding: EdgeInsets.fromLTRB(10, 2, 10, 0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 3, color: Colors.blue)),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: TextFormField(
                    initialValue: 'Initial value',
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 3, color: Colors.blue), //<-- SEE HERE
                      ),
                      suffixIcon: GestureDetector(
                          child: Image.asset("assets/images/pen 7.png")),
                      contentPadding: EdgeInsets.fromLTRB(10, 2, 10, 0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 3, color: Colors.blue)),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: TextFormField(
                    initialValue: 'Initial value',
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 3, color: Colors.blue), //<-- SEE HERE
                      ),
                      suffixIcon: GestureDetector(
                          child: Image.asset("assets/images/pen 7.png")),
                      contentPadding: EdgeInsets.fromLTRB(10, 2, 10, 0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 3, color: Colors.blue)),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: MaterialButton(
                    onPressed: () {
                      if (_globalekey.currentState!.validate()) {}
                    },
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Color(0xFF50C0E1),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Update",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ))
      ]),
    );
  }
}
