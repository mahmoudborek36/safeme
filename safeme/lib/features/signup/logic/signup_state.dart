import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';
@freezed
class SignupState<t> with _$SignupState<t> {
    const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = Loading;
  const factory SignupState.success(t data) = Success<t>;
  const factory SignupState.error({required String error}) = Error;
}