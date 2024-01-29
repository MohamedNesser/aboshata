part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

class Loginloaded extends LoginState {}

class Loginsucsess extends LoginState {}

class Loginfaliouer extends LoginState {
  String errormassage;
  Loginfaliouer({
    required this.errormassage,
  });
}
