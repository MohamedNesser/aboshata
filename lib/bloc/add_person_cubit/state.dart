import 'package:flutter/material.dart';

@immutable
sealed class AddPersonState {}

final class AddPersonInitial extends AddPersonState {}

final class uploadimagestate extends AddPersonState {}

class AddPersonloaded extends AddPersonState {}

class AddPersonsucsess extends AddPersonState {}

class AddPersonfaliouer extends AddPersonState {
  String errormassage;
  AddPersonfaliouer({
    required this.errormassage,
  });
}
