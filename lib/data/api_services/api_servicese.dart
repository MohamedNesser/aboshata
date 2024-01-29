abstract class ApiServices {
  Future get(String path,
      {dynamic? data, Map<String, dynamic>? queryparametrs});
  Future post(String path,
      {dynamic? data,
      Map<String, dynamic>? quereyprameters,
      bool isFormData = false});
  Future delete(String path,
      {dynamic? data,
      Map<String, dynamic>? quereyprameters,
      bool isFormData = false});
  Future fatch(String path,
      {dynamic? data,
      Map<String, dynamic>? quereyprameters,
      bool isFormData = false});
}
