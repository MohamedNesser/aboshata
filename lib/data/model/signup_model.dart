import 'package:graduationproject/data/api_services/end_pointes.dart';

class signupmodel {
  final String token;

  signupmodel({required this.token});

  factory signupmodel.fromJson(
    Map<String, dynamic> json,
  ) {
    return signupmodel(token: json[ApiKeys.token]);
  }
}
