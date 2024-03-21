import 'package:dio/dio.dart';
import 'package:graduationproject/data/api_services/end_pointes.dart';
import 'package:graduationproject/data/model/login_model.dart';
import 'package:graduationproject/data/sherdp_referense/cash_helper.dart';

class ApiInterseptor extends Interceptor {
  Loginmodel? userlogin;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Authorization'] =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1YjdkNmUxOGE3MmVmMjBmMDQ1MDNmMSIsImVtYWlsIjoiYWhtZWRAZ21haWwuY29tIiwiaXNBZG1pbiI6ZmFsc2UsImlhdCI6MTcwODAxOTEzNn0._b8wqG9OxUs33zoM-zYsPJUUh46BKSbwX051MuARX58";
    super.onRequest(options, handler);
  }
}
