import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemLostChiled extends StatelessWidget {
  const ItemLostChiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0XFF151528), borderRadius: BorderRadius.circular(40)),
        height: 150.h,
        width: 260.w,
        child: Row(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset("assets/images/child1.png"),
                    Image.asset("assets/images/child2.png")
                  ],
                ),
                Row(
                  children: [
                    Image.asset("assets/images/child3.png"),
                    Image.asset("assets/images/child4.png")
                  ],
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name : mohamed",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Addres : abo kaber",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Phone : 01032100319",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Email : ahmed@gamil.com",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Age : 9",
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mode_edit_outlined,
                          color: Colors.white,
                        )),
                    Container(
                      height: 26.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Color(0xFF50C0E1),
                        onPressed: () {},
                        child: Text(
                          " found ",
                          style:
                              TextStyle(fontSize: 10.sp, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
