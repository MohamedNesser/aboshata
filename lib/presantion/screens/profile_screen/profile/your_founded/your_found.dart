import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/myfound/cubit/myfound_cubit.dart';
import 'package:graduationproject/bloc/mylost/cubit/mylost_cubit.dart';
import 'package:graduationproject/bloc/mylost/cubit/mylost_state.dart';
import 'package:graduationproject/data/model/mylost_model/mylost.dart';

class YourFound extends StatelessWidget {
  const YourFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyfoundCubit, MyfoundState>(
      listener: (context, state) {
        if (state is Myfoundseacsess) {
        } else if (state is Myfoundfaliouer) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(" pleas Login agin ")));
        }
      },
      builder: (context, state) {
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
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Colors.white,
                          onPressed: () {
                            context.read<MyfoundCubit>().GetMyLost();
                          },
                          child: Text(
                            "Your founds",
                            style:
                                TextStyle(fontSize: 20.sp, color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: state is Myfoundloaded
                          ? CircularProgressIndicator()
                          : state is Myfoundseacsess
                              ? ListView.builder(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, bottom: 20),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        height: 130.h,
                                        width: 260.w,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 12, top: 10),
                                          child: Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    height: 130,
                                                    width: 80,
                                                    decoration: BoxDecoration(
                                                        color: Colors.amber,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(80)),
                                                    child: Image.network(
                                                      (state.myfound
                                                          .result![index].img!),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
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
                                                    "Name :${state.myfound.result![index].name}",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    "Addres : ${state.myfound.result![index].address}",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    "Phone :${state.myfound.result![index].phoneNumber}",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    "Email : ${state.myfound.result![index].email}",
                                                    style: TextStyle(
                                                        color: Colors.black),
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
                                                                .mode_edit_outline_outlined,
                                                            color: Colors.blue,
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
                                                                color: Colors
                                                                    .white),
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
                                      ),
                                    );
                                  },
                                  itemCount: state.myfound.result!.length)
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
