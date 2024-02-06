// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/data/api_services/end_pointes.dart';
import 'package:graduationproject/data/errors/failuer.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';

import 'package:graduationproject/data/api_services/api_servicese.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(
    this.api,
  ) : super(LoginInitial());

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController pasworrdcontroller = TextEditingController();
  final ApiServices api;

  Future login() async {
    try {
      emit(Loginloaded());
      final response = await api.post(EndPoint.loginurl, data: {
        ApiKeys.email: emailcontroller.text,
        ApiKeys.password: pasworrdcontroller.text
      });
      emit(Loginsucsess());
      return response;
    } on failuer catch (e) {
      emit(Loginfaliouer(errormassage: e.errormassage));
    }
  }
}
