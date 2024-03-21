// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:graduationproject/bloc/add_person_cubit/cubit.dart';
// import 'package:graduationproject/bloc/add_person_cubit/state.dart';
// import 'package:graduationproject/presantion/screens/add_person/costum_text_field.dart';
// import 'package:graduationproject/presantion/screens/home_screen/home_screen.dart';

// class FormFindPerson extends StatelessWidget {
//   const FormFindPerson({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<AddPersonCubit, AddPersonState>(
//       listener: (context, state) {
//         if (state is AddPersonsucsess) {
//           ScaffoldMessenger.of(context)
//               .showSnackBar(SnackBar(content: Text("تم رفع البيانات بنجاح")));
//           Navigator.of(context)
//               .push(MaterialPageRoute(builder: (context) => HomeScreen()));
//         } else if (state is AddPersonfaliouer) {
//           ScaffoldMessenger.of(context)
//               .showSnackBar(SnackBar(content: Text(state.errormassage)));
//         }
//       },
//       builder: (context, state) {
//         return SingleChildScrollView(
//           child: Column(
//             children: [
//               CuctomTextField(
//                 icon: Icon(Icons.person, color: Colors.blue, size: 30),
//                 labeltext: 'Enter name lost person',
//                 controller: context.read<AddPersonCubit>().nameController,
//               ),
//               SizedBox(
//                 height: 20.h,
//               ),
//               CuctomTextField(
//                 icon: Icon(Icons.align_vertical_bottom_rounded,
//                     color: Colors.blue, size: 30),
//                 labeltext: 'Enter age for lost person ',
//                 controller: context.read<AddPersonCubit>().ageController,
//               ),
//               SizedBox(
//                 height: 20.h,
//               ),
//               CuctomTextField(
//                 icon: Icon(Icons.location_on_outlined,
//                     color: Colors.blue, size: 30),
//                 labeltext: 'Enter Address lost person ',
//                 controller: context.read<AddPersonCubit>().addressController,
//               ),
//               SizedBox(
//                 height: 20.h,
//               ),
//               CuctomTextField(
//                 icon: Icon(Icons.email_rounded, color: Colors.blue, size: 30),
//                 labeltext: 'Enter contact mail',
//                 controller: context.read<AddPersonCubit>().emailController,
//               ),
//               SizedBox(
//                 height: 20.h,
//               ),
//               CuctomTextField(
//                 icon: Icon(Icons.phone, color: Colors.blue, size: 40),
//                 labeltext: 'Enter contact phone',
//                 controller:
//                     context.read<AddPersonCubit>().phonenumberController,
//               ),
//               SizedBox(),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Image.asset("assets/images/find2.png"),
//                   SizedBox(
//                     width: 200.w,
//                     child: state is AddPersonloaded
//                         ? CircularProgressIndicator()
//                         : MaterialButton(
//                             onPressed: () {
//                               context.read<AddPersonCubit>().AddPersone();
//                             },
//                             elevation: 10,
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20)),
//                             color: Color.fromARGB(255, 37, 224, 209),
//                             child: Padding(
//                               padding: EdgeInsets.symmetric(vertical: 10),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     "Confirm infromation ",
//                                     style: TextStyle(
//                                         color: Colors.black,
//                                         fontSize: 15.sp,
//                                         fontWeight: FontWeight.bold),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                   ),
//                   Image.asset("assets/images/decision 1.png")
//                 ],
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
