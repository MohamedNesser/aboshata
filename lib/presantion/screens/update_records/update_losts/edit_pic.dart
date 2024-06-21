// ignore_for_file: unnecessary_null_comparison

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/update_password.dart/update_pass_cubit.dart';
import 'package:graduationproject/bloc/update_requrds/cubit/update_requrdes_cubit.dart';
import 'package:image_picker/image_picker.dart';

class EditPic extends StatelessWidget {
  const EditPic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdateRequrdesCubit, UpdateRequrdesState>(
      listener: (context, state) {},
      builder: (context, state) {
        final pickedImages = context.read<UpdateRequrdesCubit>().pickedimages;

        return Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      child:
                          context.read<UpdateRequrdesCubit>().pickedimages[0] ==
                                  null
                              ? Image.asset("assets/images/chileed.png",
                                  width: 120.w, height: 90.h, fit: BoxFit.fill)
                              : Image(
                                  image: FileImage(File(context
                                      .read<UpdateRequrdesCubit>()
                                      .pickedimages[0]
                                      .path!)),
                                  width: 120.w,
                                  height: 90.h,
                                  fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Color(0xFF50C0E1),
                        onPressed: () {
                          ImagePicker()
                              .pickImage(source: ImageSource.gallery)
                              .then((value) => context
                                  .read<UpdateRequrdesCubit>()
                                  .picimage1(File(value!.path)));
                        },
                        child: Text(
                          "edit",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Color(0xFF50C0E1),
                        onPressed: () {
                          //       context.read<UpdateRequrdesCubit>().picimage2();
                        },
                        child: Text(
                          "edit",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Color(0xFF50C0E1),
                        onPressed: () {
                          //    context.read<UpdateRequrdesCubit>().picimage3();
                        },
                        child: Text(
                          "edit",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
