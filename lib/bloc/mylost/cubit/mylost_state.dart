import 'package:flutter/material.dart';
import 'package:graduationproject/data/model/mylost_model/mylost.dart';

@immutable
sealed class MyLostState {}

final class MyLostInitial extends MyLostState {}

class MyLostloaded extends MyLostState {}

class MyLostseacsess extends MyLostState {
  final Mylost mylost;

  MyLostseacsess({required this.mylost});
}

class MyLostfaliouer extends MyLostState {
  String errormassage;
  MyLostfaliouer({
    required this.errormassage,
  });
}
