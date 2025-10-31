import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:safeme/core/networking/api_constants.dart';
import 'package:safeme/features/login/ui/loginscreen/data/models/login_request_body.dart';
import 'package:safeme/features/login/ui/loginscreen/data/models/login_response.dart';


part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  // @POST(ApiConstants.signup)
  // Future<SignupResponse> signup(
  //   @Body() SignupRequestBody signupRequestBody,
  // );
}