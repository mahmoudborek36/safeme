import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safeme/core/helpers/extensions.dart';
import 'package:safeme/core/rounting/routes.dart';
import 'package:safeme/core/theming/colors.dart';
import 'package:safeme/core/theming/styles.dart';
import 'package:safeme/features/signup/logic/signup_cubit.dart';
import 'package:safeme/features/signup/logic/signup_state.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
 Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.mainBlueColcor,
                ),
              ),
            );
          },

          success: (signUpResponse) {
            context.pop();
            context.pushNamed(Routes.loginScreen);
          },

          error: (error) {
            setupErrorState(context,error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

void setupErrorState(BuildContext context, String error) {
  context.pop();
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      icon: const Icon(Icons.error, color: Colors.red, size: 32),
      content: Text(error, style: TextStyles.font15DarkBlueMedium),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text('Got it', style: TextStyles.font14BlueSemiBold),
        ),
      ],
    ),
  );
}