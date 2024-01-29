class ErrorModel {
  String? status;
  Error? error;
  late String message;
  String? stack;

  ErrorModel({this.status, this.error, required this.message, this.stack});

  ErrorModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    error = json['error'] != null ? new Error.fromJson(json['error']) : null;
    message = json['message'];
    stack = json['stack'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.error != null) {
      data['error'] = this.error!.toJson();
    }
    data['message'] = this.message;
    data['stack'] = this.stack;
    return data;
  }
}

class Error {
  int? statusCode;
  String? status;

  Error({this.statusCode, this.status});

  Error.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['status'] = this.status;
    return data;
  }
}
