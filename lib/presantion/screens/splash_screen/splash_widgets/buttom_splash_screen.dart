import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/presantion/screens/Login_screen/login_page.dart';
import 'package:graduationproject/presantion/screens/signup_screen/signup_screen.dart';

class ButtomSplash extends StatelessWidget {
  const ButtomSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.5,
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Log in",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.5,
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Color.fromARGB(255, 27, 27, 49),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
