import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/update_requrds/cubit/update_requrdes_cubit.dart';
import 'package:graduationproject/data/model/mylost_model/mylost.dart';
import 'package:image_picker/image_picker.dart';

class EditPic extends StatelessWidget {
  const EditPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdateRequrdesCubit, UpdateRequrdesState>(
      listener: (context, state) {},
      builder: (context, state) {
        final pickedImages = context.read<UpdateRequrdesCubit>().pickedimages;

        return Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(3, (index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      child: pickedImages[index] != null
                          ? Image(
                              image: FileImage(File(pickedImages[index]!.path)),
                              width: 50.w,
                              height: 40.h,
                              fit: BoxFit.fill,
                            )
                          : Image.network(
                              "",
                              width: 50.w,
                              height: 40.h,
                              fit: BoxFit.fill,
                            ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      height: 30.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: const Color(0xFF50C0E1),
                        onPressed: () async {
                          final cubit = context.read<UpdateRequrdesCubit>();

                          // Prevent multiple instances of the image picker
                          if (cubit.isImagePickerActive) return;

                          cubit.setImagePickerActive(true);

                          try {
                            final pickedFile = await ImagePicker()
                                .pickImage(source: ImageSource.gallery);
                            if (pickedFile != null) {
                              cubit.updateImage(
                                  index, File(pickedFile.path), File(""));
                            }
                          } finally {
                            cubit.setImagePickerActive(false);
                          }
                        },
                        child: Text(
                          "edit",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        );
      },
    );
  }
}
