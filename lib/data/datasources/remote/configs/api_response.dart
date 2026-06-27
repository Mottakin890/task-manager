class ApiResponse {
  final int statusCode;
  final dynamic data;
  final bool isSuccess;
  final String? errorMsg;

  ApiResponse({
    required this.statusCode,
    required this.data,
    required this.isSuccess,
    this.errorMsg,
  });
}
