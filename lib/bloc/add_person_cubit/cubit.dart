import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';
import 'dart:io';
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

  // Future piclistimage() async {
  //   imagespaths.addAll(images);
  //   emit(picimagesucsess());
  // }
  List<XFile> pickedimages = [];

  Future<void> piclistimage() async {
    List<XFile> images = await ImagePicker().pickMultiImage();
    if (images != null) {
      pickedimages.addAll(images);
      emit(picimagesucsess());
    }
  }

  var dio = Dio();

  Future<void> uploadData({required List<String> imagepaths}) async {
    FormData formData = FormData();

    // Add images to FormData
    for (var file in imagepaths) {
      formData.files.add(MapEntry(
          'img',
          await MultipartFile.fromFile(file,
              contentType: MediaType("image", "jpeg"))));
    }
    // Add other parameters to FormData
    formData.fields.addAll([
      MapEntry(ApiKeys.email, emailController.text),
      MapEntry(ApiKeys.name, "mohamed"),
      MapEntry(ApiKeys.phoneNumber, "01032100319"),
      MapEntry(ApiKeys.age, "22"),
      MapEntry(ApiKeys.address, "abo kaber"),
    ]);

    var headers = {
      'Authorization':
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1YjdkNmUxOGE3MmVmMjBmMDQ1MDNmMSIsImVtYWlsIjoiYWhtZWRAZ21haWwuY29tIiwiaXNBZG1pbiI6ZmFsc2UsImlhdCI6MTcwODAxOTEzNn0._b8wqG9OxUs33zoM-zYsPJUUh46BKSbwX051MuARX58",
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

      Response response = await dio.post(
          'https://lostcal.onrender.com/missing/add',
          data: formData,
          options: Options(contentType: 'multipart/form-data'));

      emit(AddPersonsucsess());
      return response.data;
    } on ServerException catch (e) {
      emit(AddPersonfaliouer(errormassage: e.errorModel.message));
    }
  }
}
