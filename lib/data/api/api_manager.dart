import 'package:dio/dio.dart';
import 'package:online_exam_app/data/api/api_constants.dart';
import 'package:online_exam_app/data/api/models/requests/login_request.dart';
import 'package:online_exam_app/data/api/models/responses/auth_response.dart';

class ApiManager {
  late Dio _dio;
  ApiManager() {
    _dio = Dio(BaseOptions(
      baseUrl: ApiConstants.baseUrl,
    ));
  }

  Future<AuthResponse> login(LoginRequest request) async {
    var response =
        await _dio.post(ApiConstants.loginUrl, data: request.toJson());
    var authResponse = AuthResponse.fromJson(response);
    return authResponse;
  }
}
