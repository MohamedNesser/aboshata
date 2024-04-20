import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/presantion/screens/profile_screen/profile_page.dart';
import 'package:graduationproject/presantion/screens/profile_screen/profile_widgets/your_adds_children/item_your_add.dart';

class YourAddScreen extends StatelessWidget {
  const YourAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF151528),
        body: Padding(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50.h,
                    width: 150.w,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProfileScreen()));
                      },
                      child: Text(
                        "The lost",
                        style: TextStyle(fontSize: 24.sp, color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    height: 50.h,
                    width: 150.w,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => YourAddScreen()));
                      },
                      child: Text(
                        "Your adds",
                        style: TextStyle(fontSize: 24.sp, color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ItemAddScreen();
                      },
                      itemCount: 5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
