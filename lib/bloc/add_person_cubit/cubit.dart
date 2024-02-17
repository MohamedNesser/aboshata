import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationproject/bloc/add_person_cubit/state.dart';
import 'package:graduationproject/bloc/signup/cubit/signup_state.dart';
import 'package:graduationproject/core/funaction.dart';
import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/api_services/end_pointes.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';
import 'package:image_picker/image_picker.dart';

class AddPersonCubit extends Cubit<AddPersonState> {
  AddPersonCubit(
    this.api,
  ) : super(AddPersonInitial());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController phonenumberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  XFile? profilepic1;
  XFile? profilepic2;
  XFile? profilepic3;

  final ApiServices api;

  UploadeFileimage1(XFile image) {
    profilepic1 = image;
    emit(uploadimagestate());
  }

  UploadeFileimage2(XFile image) {
    profilepic2 = image;
    emit(uploadimagestate());
  }

  UploadeFileimage3(XFile image) {
    profilepic3 = image;
    emit(uploadimagestate());
  }

  AddPersone() async {
    try {
      emit(AddPersonloaded());
      final response = await api.post(EndPoint.missingaddurl, data: {
        ApiKeys.email: emailController.text,
        ApiKeys.name: nameController.text,
        ApiKeys.phoneNumber: phonenumberController.text,
        ApiKeys.age: ageController.text,
        ApiKeys.adress: addressController.text,
        ApiKeys.uploudimg1: await uploadImageToAPI(profilepic1!),
      });
      emit(AddPersonsucsess());
    } on ServerException catch (e) {
      emit(AddPersonfaliouer(errormassage: e.errorModel.message));
    }
  }
}
