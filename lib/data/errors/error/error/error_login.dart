class ErrorModel {
  final String status;
  final Error error;
  final String message;
  final String stack;

  ErrorModel(
      {required this.status,
      required this.error,
      required this.message,
      required this.stack});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      status: json['status'],
      error: Error.fromJson((json['error'])),
      message: json['message'],
      stack: json['stack'],
    );
  }

  Map<String, dynamic> tojson() {
    return {
      'status': status,
      'error': error,
      'message': message,
      'stack': stack
    };
  }
}

class Error {
  int? statusCode;
  String? status;

  Error({this.statusCode, this.status});

  factory Error.fromJson(Map<String, dynamic> json) {
    return Error(statusCode: json['statusCode'], status: json['status']);
  }
  Map<String, dynamic> tojson() {
    return {
      'status': status,
      'statusCode': statusCode,
    };
  }
}
// class ErrorModel {
//   final int statusCode;
//   final String status;
//   final String message;

//   ErrorModel(
//       {required this.statusCode, required this.status, required this.message});

//   factory ErrorModel.fromJson(Map<String, dynamic> json) {
//     return ErrorModel(
//         statusCode: json['statusCode'],
//         status: json['status'],
//         message: json['message']);
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['statusCode'] = this.statusCode;
//     data['status'] = this.status;
//     data['message'] = this.message;
//     return data;
//   }
// }
