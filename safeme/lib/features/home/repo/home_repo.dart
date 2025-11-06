import 'package:safeme/core/networking/api_error_handler.dart';
import 'package:safeme/core/networking/api_result.dart';
import 'package:safeme/features/home/data/api/home_api_service.dart';
import 'package:safeme/features/home/data/models/specializations_response_model.dart';

class HomeRepo {
  final HomeApiService _homeapiService;

  HomeRepo(this._homeapiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      var response = await _homeapiService.getSpecialization();
      return ApiResult.success(response);
    } catch (eroor) {
      return ApiResult.failure(ErrorHandler.handle(eroor));
    }
  }
}
