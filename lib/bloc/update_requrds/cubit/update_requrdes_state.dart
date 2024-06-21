part of 'update_requrdes_cubit.dart';

sealed class UpdateRequrdesState {}

final class UpdateRequrdesInitial extends UpdateRequrdesState {}

class UpdateRequrdesloaded extends UpdateRequrdesState {}

class uploadimage extends UpdateRequrdesState {}

class UpdateRequrdesseacsess extends UpdateRequrdesState {}

class UpdateRequrdesfaliouer extends UpdateRequrdesState {
  String errormassage;
  UpdateRequrdesfaliouer({
    required this.errormassage,
  });
}
