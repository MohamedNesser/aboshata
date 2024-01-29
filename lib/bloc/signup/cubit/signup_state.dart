import 'package:flutter/material.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}

class signuploaded extends SignupState {}

class signupsucsess extends SignupState {}

class signupfaliouer extends SignupState {
  String errormassage;
  signupfaliouer({
    required this.errormassage,
  });
}
