import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safeme/core/networking/api_result.dart';
import 'package:safeme/features/signup/data/model/signup_repo.dart';
import 'package:safeme/features/signup/data/repo/signup_request_body.dart';
import 'package:safeme/features/signup/logic/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();


  Future<void> emitSignUpState() async {
    emit(SignupState.loading());
    var response = await _signupRepo.signUp(
      SignupRequestBody(
        email: emailController.text,
        name: nameController.text,
        password: passwordController.text,
        phone: phoneController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(
      success: (data) {
        emit(SignupState.success(data));
      },
      failure: (errorHandler) {
        emit(
          SignupState.error(error: errorHandler.apiErrorModel.message ?? ''),
        );
      },
    );
  }
}
