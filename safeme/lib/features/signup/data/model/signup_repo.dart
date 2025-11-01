import 'package:safeme/core/networking/api_error_handler.dart';
import 'package:safeme/core/networking/api_result.dart';
import 'package:safeme/core/networking/api_service.dart';
import 'package:safeme/features/login/ui/loginscreen/data/models/login_response.dart';
import 'package:safeme/features/signup/data/repo/signup_request_body.dart';
import 'package:safeme/features/signup/data/repo/signup_response.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signUp(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}