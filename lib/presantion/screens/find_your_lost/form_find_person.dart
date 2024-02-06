import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/presantion/screens/add_person/costum_text_field.dart';

class FormFindPerson extends StatelessWidget {
  const FormFindPerson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CuctomTextField(
            icon: Icon(Icons.person, color: Colors.blue, size: 30),
            labeltext: 'Enter name lost person',
          ),
          SizedBox(
            height: 20.h,
          ),
          CuctomTextField(
            icon: Icon(Icons.align_vertical_bottom_rounded,
                color: Colors.blue, size: 30),
            labeltext: 'Enter age for lost person ',
          ),
          SizedBox(
            height: 20.h,
          ),
          CuctomTextField(
            icon:
                Icon(Icons.location_on_outlined, color: Colors.blue, size: 30),
            labeltext: 'Enter Address lost person ',
          ),
          SizedBox(
            height: 20.h,
          ),
          CuctomTextField(
            icon: Icon(Icons.email_rounded, color: Colors.blue, size: 30),
            labeltext: 'Enter contact mail',
          ),
          SizedBox(
            height: 20.h,
          ),
          CuctomTextField(
            icon: Icon(Icons.phone, color: Colors.blue, size: 40),
            labeltext: 'Enter contact phone',
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/find2.png"),
              SizedBox(
                width: 200.w,
                child: MaterialButton(
                  onPressed: () {},
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color.fromARGB(255, 37, 224, 209),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Confirm infromation ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Image.asset("assets/images/decision 1.png")
            ],
          )
        ],
      ),
    );
  }
}
