import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/mylost/cubit/mylost_cubit.dart';
import 'package:graduationproject/bloc/mylost/cubit/mylost_state.dart';
import 'package:graduationproject/presantion/screens/profile_screen/profile_widgets/item_chiled.dart';
import 'package:graduationproject/presantion/screens/profile_screen/profile_widgets/your_adds_children/your_add_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyLostCubit, MyLostState>(
      listener: (context, state) {
        if (state is MyLostseacsess) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(" التسجيل بنجاح")));
          context.read<MyLostCubit>().GetMyLost();
        } else if (state is MyLostfaliouer) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errormassage)));
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
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
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Color(0xFF151528),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProfileScreen()));
                          },
                          child: Text(
                            "The lost",
                            style:
                                TextStyle(fontSize: 24.sp, color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        height: 50.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
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
                            style:
                                TextStyle(fontSize: 24.sp, color: Colors.black),
                          ),
                        ),
                      )
                    ],
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
                        context.read<MyLostCubit>().GetMyLost();
                      },
                      child: state is MyLostloaded
                          ? CircularProgressIndicator()
                          : Text(
                              "allll lost",
                              style: TextStyle(
                                  fontSize: 24.sp, color: Colors.black),
                            ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: state is MyLostloaded
                          ? CircularProgressIndicator()
                          : state is MyLostseacsess
                              ? ListView.builder(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, bottom: 20),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0XFF151528),
                                            borderRadius:
                                                BorderRadius.circular(40)),
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
                                                    Image.asset(
                                                        "assets/images/child1.png"),
                                                    Image.asset(
                                                        "assets/images/child2.png")
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                        "assets/images/child3.png"),
                                                    Image.asset(
                                                        "assets/images/child4.png")
                                                  ],
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Name : ${state.mylost.name}",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  "Addres : ${state.mylost.address}",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  "Phone :${state.mylost.phoneNumber}",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  "Email :${state.mylost.email}",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  "Age : ${state.mylost.age}",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 40,
                                                    ),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(
                                                          Icons
                                                              .mode_edit_outlined,
                                                          color: Colors.white,
                                                        )),
                                                    Container(
                                                      height: 26.h,
                                                      width: 60.w,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      50)),
                                                      child: MaterialButton(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                        color:
                                                            Color(0xFF50C0E1),
                                                        onPressed: () {},
                                                        child: Text(
                                                          " found ",
                                                          style: TextStyle(
                                                              fontSize: 10.sp,
                                                              color:
                                                                  Colors.white),
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
                                  },
                                  itemCount: 7)
                              : Container(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
