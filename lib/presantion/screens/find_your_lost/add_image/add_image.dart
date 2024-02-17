import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/add_person_cubit/cubit.dart';
import 'package:graduationproject/bloc/add_person_cubit/state.dart';
import 'package:image_picker/image_picker.dart';

class Addimage extends StatelessWidget {
  const Addimage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddPersonCubit, AddPersonState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          height: 140.h,
          width: 140.w,
          child: Row(
            children: [
              context.read<AddPersonCubit>().profilepic1 == null
                  ? GestureDetector(
                      onTap: () {
                        ImagePicker()
                            .pickImage(source: ImageSource.gallery)
                            .then((value) => context
                                .read<AddPersonCubit>()
                                .UploadeFileimage1(value!));
                      },
                      child: Container(
                        child: Image.asset("assets/images/image-gallery 1.png",
                            width: 70, height: 100, fit: BoxFit.contain),
                      ),
                    )
                  : Container(
                      child: Image(
                          image: FileImage(File(context
                              .read<AddPersonCubit>()
                              .profilepic1!
                              .path)),
                          width: 70,
                          height: 140.h,
                          fit: BoxFit.fill),
                    ),
              Column(
                children: [
                  context.read<AddPersonCubit>().profilepic2 == null
                      ? GestureDetector(
                          onTap: () {
                            ImagePicker()
                                .pickImage(source: ImageSource.gallery)
                                .then((value) => context
                                    .read<AddPersonCubit>()
                                    .UploadeFileimage2(value!));
                          },
                          child: Container(
                            child: Image.asset(
                                "assets/images/image-gallery 1.png",
                                width: 70.w,
                                height: 70.h,
                                fit: BoxFit.fill),
                          ),
                        )
                      : Container(
                          height: 70.h,
                          width: 70.w,
                          child: Image(
                              image: FileImage(File(context
                                  .read<AddPersonCubit>()
                                  .profilepic2!
                                  .path)),
                              width: 70.w,
                              height: 70.h,
                              fit: BoxFit.fill),
                        ),
                  context.read<AddPersonCubit>().profilepic3 == null
                      ? GestureDetector(
                          onTap: () {
                            ImagePicker()
                                .pickImage(source: ImageSource.gallery)
                                .then((value) => context
                                    .read<AddPersonCubit>()
                                    .UploadeFileimage3(value!));
                          },
                          child: Container(
                            child: Image.asset(
                                "assets/images/image-gallery 1.png",
                                width: 70.w,
                                height: 70.h,
                                fit: BoxFit.fill),
                          ),
                        )
                      : Container(
                          child: Image(
                              image: FileImage(File(context
                                  .read<AddPersonCubit>()
                                  .profilepic3!
                                  .path)),
                              width: 70.w,
                              height: 70.h,
                              fit: BoxFit.fill),
                        ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
