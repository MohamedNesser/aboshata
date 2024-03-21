import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/add_person_cubit/cubit.dart';
import 'package:graduationproject/bloc/add_person_cubit/state.dart';
import 'package:image_picker/image_picker.dart';

class Addimage extends StatefulWidget {
  Addimage({Key? key}) : super(key: key);

  @override
  State<Addimage> createState() => _AddimageState();
}

class _AddimageState extends State<Addimage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddPersonCubit, AddPersonState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          height: 100.h,
          width: 130.w,
          child: Column(
            children: [
              GestureDetector(
                  onTap: () {
                    context.read<AddPersonCubit>().piclistimage();
                  },
                  child: Container(
                    child: Image.asset("assets/images/image-gallery 1.png",
                        height: 100.h, width: 120.w, fit: BoxFit.contain),
                  )),
            ],
          ),
        );
      },
    );
  }
}
//  context.read<AddPersonCubit>().profilepic1 == null
//                   ? GestureDetector(
//                       onTap: () {
//                         context.read<AddPersonCubit>().picmorekimges();
//                       },
//                       child: Container(
//                         child: Image.asset("assets/images/image-gallery 1.png",
//                             height: 140.h, width: 160.w, fit: BoxFit.contain),
//                       ),
//                     )
//                   :
