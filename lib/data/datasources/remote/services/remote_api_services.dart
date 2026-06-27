import 'dart:convert';
import 'package:http/http.dart';
import 'package:logger/web.dart';
import 'package:task_manager/data/datasources/local/services/local_cache_services.dart';
import 'package:task_manager/data/datasources/remote/configs/api_response.dart';

class RemoteApiServices {
  static final Logger _logger = Logger();

  static Future<ApiResponse> getRequest({required String url}) async {
    Uri uri = Uri.parse(url);
    _logger.i(url);
    Response response = await get(
      uri,
      headers: {"token": LocalCacheServices.accessToken ?? ""},
    );
    _logger.i(response.statusCode);
    _logger.i(response.body);
    if (response.statusCode == 200) {
      return ApiResponse(
        statusCode: response.statusCode,
        data: jsonDecode(response.body),
        isSuccess: true,
      );
    } else {
      return ApiResponse(
        statusCode: response.statusCode,
        data: jsonDecode(response.body),
        errorMsg: jsonDecode(response.body),
        isSuccess: false,
      );
    }
  }

  static Future<ApiResponse> postRequest({
    required String url,
    Map<String, dynamic>? body,
  }) async {
    Uri uri = Uri.parse(url);
    _logger.i(url);
    Response response = await post(
      uri,
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "token": LocalCacheServices.accessToken ?? "",
      },
      body: body != null ? jsonEncode(body) : null,
    );
    _logger.i(response.statusCode);
    _logger.i(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return ApiResponse(
        statusCode: response.statusCode,
        data: jsonDecode(response.body),
        isSuccess: true,
      );
    } else {
      return ApiResponse(
        statusCode: response.statusCode,
        data: jsonDecode(response.body),
        errorMsg: jsonDecode(response.body),
        isSuccess: false,
      );
    }
  }
}
