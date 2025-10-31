import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safeme/core/app_text_button.dart';
import 'package:safeme/core/theming/spacing.dart';
import 'package:safeme/core/theming/styles.dart';
import 'package:safeme/features/login/ui/loginscreen/cubit/login_cubit.dart';
import 'package:safeme/features/login/ui/loginscreen/wedgits/dont_have_account.dart';
import 'package:safeme/features/login/ui/loginscreen/wedgits/email_password.dart';
import 'package:safeme/features/login/ui/loginscreen/wedgits/login_block_listener.dart';
import 'package:safeme/features/login/ui/loginscreen/wedgits/terms_and_conditions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: TextStyles.font24BlueBold),
                verticalSpace(30),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GrayRegular,
                ),

                verticalSpace(30),

                Column(
                  children: [
                    const EmailPassword(),

                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        "Forget Password",
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(30),
                    AppTextButton(
                      buttonText: "login",
                      textStyle: TextStyles.font16WhiteSemiBold.copyWith(
                        fontSize: 11.sp,
                      ),
                      onPressed: () {
                        validateAndDoLogin(context);
                      },
                    ),
                    verticalSpace(40),
                    TermsAndConditionsText(),
                    verticalSpace(30),
                    DontHaveAccountText(),
                    LoginBlockListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateAndDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
