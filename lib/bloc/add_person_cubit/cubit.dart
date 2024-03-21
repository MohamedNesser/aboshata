import 'dart:io';

import 'package:graduationproject/data/api_services/intercaptor.dart';
import 'package:http_parser/http_parser.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationproject/bloc/add_person_cubit/state.dart';
import 'package:graduationproject/bloc/signup/cubit/signup_state.dart';
import 'package:graduationproject/core/funaction.dart';
import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/api_services/end_pointes.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http_parser/http_parser.dart';

class AddPersonCubit extends Cubit<AddPersonState> {
  AddPersonCubit(
    this.api,
  ) : super(AddPersonInitial());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController phonenumberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  final ApiServices api;
  List<XFile> imagespaths = [];
  Future piclistimage() async {
    List<XFile> image = await ImagePicker().pickMultiImage();
    if (image != null) {
      imagespaths.addAll(image);
      emit(picimagesucsess());
    } else {
      imagespaths = image;
      emit(picimagenot());
    }
  }

  // List<XFile> imageFile = [];
  // Future Pickedfromgallery() async {
  //   List<XFile> images = await ImagePicker().pickMultiImage();
  //   imageFile = images;
  //   emit(uploadlistimages());
  //   // try {
  //   //   List<XFile> images = await imagepacker.pickMultiImage();
  //   //   if (images != null) {
  //   //     setState(() {
  //   //       pickedimages.addAll(images);
  //   //     });
  //   //   } else {
  //   //     setState(() {
  //   //       pickedimages = images;
  //   //     });
  //   //   }
  //   // } catch (e) {}
  // }

  // AddPersone() async {
  //   List<File> imagespaths = [];
  //   FormData formData = FormData();
  //   for (var file in imagespaths) {
  //     formData.files.add(
  //       MapEntry('img', await MultipartFile.fromFile(file)),
  //     );
  //   }
  //   try {
  //     emit(AddPersonloaded());

  //     final response =
  //         await api.post(EndPoint.missingaddurl, isFormData: true, data: data);

  //     emit(AddPersonsucsess());
  //     return response;
  //   } on ServerException catch (e) {
  //     emit(AddPersonfaliouer(errormassage: e.errorModel.message));
  //   }
  // }

  // List<File> pickimages = [];
  // UploadeaddFileimage(List<File> image) {
  //   pickimages = image;
  //   emit(uploadmoreimgesstate());
  // }
  // data() async {
  //   var data = FormData.fromMap({
  //     'img': [
  //       await uploadImageToAPI1(profilepic1!),
  //       await uploadImageToAPI2(profilepic2!),
  //       await uploadImageToAPI3(profilepic3!),
  //     ],
  //     ApiKeys.email: emailController.text,
  //     ApiKeys.name: nameController.text,
  //     ApiKeys.phoneNumber: phonenumberController.text,
  //     ApiKeys.age: ageController.text,
  //     ApiKeys.address: addressController.text,
  //   });
  // }

  // var headers = {
  //   'Authorization':
  //       'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1YjdkNmUxOGE3MmVmMjBmMDQ1MDNmMSIsImVtYWlsIjoiYWhtZWRAZ21haWwuY29tIiwiaXNBZG1pbiI6ZmFsc2UsImlhdCI6MTcxMDYzMTUwOH0.Yu9OSoA91ZA6TOog9trPieMix8YGNK0urWGsj-GDI20',
  //   'id': '65b7d6e18a72ef20f04503f1'
  // };
  //
  // uplouddata() async {
  //   try {
  //     emit(AddPersonloaded());
  //     var response = await dio.request(
  //       'https://lostcal.onrender.com/missing/add',
  //       options: Options(
  //         method: 'POST',
  //         headers: headers,
  //         contentType: Headers.jsonContentType,
  //       ),
  //       data: data,
  //     );
  //     emit(AddPersonsucsess());
  //     return response;
  //   } on ServerException catch (e) {
  //     emit(AddPersonfaliouer(errormassage: e.errorModel.message));
  //   }
  // }
  var dio = Dio();
  Future uploadData(List<String> imagepaths) async {
    FormData formData = FormData();

    // Add images to FormData
    for (int i = 0; i < imagepaths.length; i++) {
      File imageFile = File(imagepaths[i]);
      formData.files.add(MapEntry(
          'images',
          await MultipartFile.fromFile(imageFile.path,
              filename: 'image_$i.jpg')));
    }
    // Add other parameters to FormData
    formData.fields.addAll([
      MapEntry(ApiKeys.email, emailController.text),
      MapEntry(ApiKeys.name, nameController.text),
      MapEntry(ApiKeys.phoneNumber, phonenumberController.text),
      MapEntry(ApiKeys.age, ageController.text),
      MapEntry(ApiKeys.address, addressController.text),
    ]);

    var headers = {
      'Authorization':
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1YjdkNmUxOGE3MmVmMjBmMDQ1MDNmMSIsImVtYWlsIjoiYWhtZWRAZ21haWwuY29tIiwiaXNBZG1pbiI6ZmFsc2UsImlhdCI6MTcxMDYzMTUwOH0.Yu9OSoA91ZA6TOog9trPieMix8YGNK0urWGsj-GDI20',
      'id': '65b7d6e18a72ef20f04503f1'
    };

    dio.interceptors.add(LogInterceptor(
        error: true,
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true));

    // Add headers to Dio instance
    dio.options.headers.addAll(headers);

    // Make POST request
    try {
      emit(AddPersonloaded());

      Response response = await dio
          .post('https://lostcal.onrender.com/missing/add', data: formData);

      emit(AddPersonsucsess());
      return response.data;
    } on ServerException catch (e) {
      emit(AddPersonfaliouer(errormassage: e.errorModel.message));
    }
  }

// Future<void> picmorekimges() async {
//   List<File> images = await ImagePicker().pickMultiImage();
//   if (images != null) {
//     pickimages.addAll(images);
//     emit(uploudmorestate());
//   } else {
//     pickimages = images;
//     emit(uploadmoreimgesstate());
//   }
// }
}
