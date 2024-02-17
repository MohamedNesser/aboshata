// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/data/api_services/end_pointes.dart';
import 'package:graduationproject/data/errors/failuer.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';

import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/model/login_model.dart';
import 'package:graduationproject/data/sherdp_referense/cash_helper.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(
    this.api,
  ) : super(LoginInitial());

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController pasworrdcontroller = TextEditingController();
  final ApiServices api;
  Loginmodel? userlogin;
  Future login() async {
    try {
      emit(Loginloaded());
      final response = await api.post(EndPoint.loginurl, data: {
        ApiKeys.email: emailcontroller.text,
        ApiKeys.password: pasworrdcontroller.text
      });
      userlogin = Loginmodel.fromJson(response);
      final mytoken = JwtDecoder.decode(userlogin!.token);

      CacheHelper().saveData(key: ApiKeys.token, value: userlogin!.token);
      CacheHelper().saveData(key: ApiKeys.id, value: mytoken[ApiKeys.id]);
      print("my id is ");
      print(mytoken['id']);
      emit(Loginsucsess());
      return response;
    } on ServerException catch (e) {
      emit(Loginfaliouer(errormassage: e.errorModel.message));
    }
  }
}
