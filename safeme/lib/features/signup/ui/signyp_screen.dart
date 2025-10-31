import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safeme/core/app_text_button.dart';
import 'package:safeme/core/theming/spacing.dart';
import 'package:safeme/core/theming/styles.dart';
import 'package:safeme/features/login/ui/loginscreen/wedgits/login_block_listener.dart';
import 'package:safeme/features/login/ui/loginscreen/wedgits/terms_and_conditions.dart';
import 'package:safeme/features/signup/ui/wedgets/already_have_an_account_yet.dart';
import 'package:safeme/features/signup/ui/wedgets/signup_email_and_password_and_num.dart';

class SignypScreen extends StatefulWidget {
  const SignypScreen({super.key});

  @override
  State<SignypScreen> createState() => _SignypScreenState();
}

class _SignypScreenState extends State<SignypScreen> {
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
                Text("Create Account", style: TextStyles.font24BlueBold),
                verticalSpace(30),
                Text(
                  "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                  style: TextStyles.font14GrayRegular,
                ),

                verticalSpace(30),

                Column(
                  children: [

                    SignupEmailAndPasswordAndNum(),
                     
                    
                    verticalSpace(30),
                    AppTextButton(
                      buttonText: "Create account",
                      textStyle: TextStyles.font16WhiteSemiBold.copyWith(
                        fontSize: 11.sp,
                      ),
                      onPressed: () {
                        // validateAndDoLogin(context);
                      },
                    ),
                    verticalSpace(40),
                    TermsAndConditionsText(),
                    verticalSpace(30),
                    AlreadyHaveAnAccountYet(),
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
}

  // void validateAndDoLogin(BuildContext context) {
  //   if (context.read<LoginCubit>().formKey.currentState!.validate()) {
  //     context.read<LoginCubit>().emitLoginStates();
  //   }
  // }

