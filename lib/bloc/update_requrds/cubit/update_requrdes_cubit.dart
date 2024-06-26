import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/api_services/end_pointes.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';
import 'package:graduationproject/data/sherdp_referense/cash_helper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http_parser/http_parser.dart';

part 'update_requrdes_state.dart';

class UpdateRequrdesCubit extends Cubit<UpdateRequrdesState> {
  UpdateRequrdesCubit(this.api) : super(UpdateRequrdesInitial());
  final ApiServices api;
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController addresscontroller = TextEditingController();
  final TextEditingController phoneNumbercontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController agecontroller = TextEditingController();

  List<File?> pickedimages = [null, null, null];

  bool _isImagePickerActive = false;

  bool get isImagePickerActive => _isImagePickerActive;

  void setImagePickerActive(bool value) {
    _isImagePickerActive = value;
    emit(UpdateRequrdesUpdated());
  }

  void updateImage(int index, File image, File file) {
    if (index < pickedimages.length) {
      pickedimages[index] = image;
    } else {
      pickedimages.add(image);
    }
    emit(UpdateRequrdesUpdated());
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
      MapEntry(ApiKeys.email, emailcontroller.text),
      MapEntry(ApiKeys.name, namecontroller.text),
      MapEntry(ApiKeys.phoneNumber, phoneNumbercontroller.text),
      MapEntry(ApiKeys.age, addresscontroller.text),
      MapEntry(ApiKeys.address, addresscontroller.text),
    ]);

    var headers = {
      'Authorization': 'Bearer ${CacheHelper().getData(key: ApiKeys.token)}',
    };

    // Add headers to Dio instance
    dio.options.headers.addAll(headers);

    // Make POST request
    try {
      emit(UpdateRequrdesloaded());

      Response response = await dio.post(
          "https://lostcal.onrender.com/Api/mylost",
          data: formData,
          options: Options(contentType: 'multipart/form-data'));

      emit(UpdateRequrdesseacsess());
      return response.data;
    } on ServerException catch (e) {
      emit(UpdateRequrdesfaliouer(errormassage: "uploaded"));
    }
  }
}
