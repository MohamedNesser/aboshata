import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationproject/bloc/signup/cubit/signup_state.dart';
import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/api_services/end_pointes.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(
    this.api,
  ) : super(SignupInitial());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController confarmepasController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final ApiServices api;

  Future Signup() async {
    try {
      emit(signuploaded());
      var response = await api.post(EndPoint.signupurl, data: {
        ApiKeys.username: nameController.text,
        ApiKeys.email: emailController.text,
        ApiKeys.password: passwordController.text
      });
      emit(signupsucsess());
      return response;
    } on ServerException catch (e) {
      emit(signupfaliouer(errormassage: e.errModel.message));
    }
  }
}
