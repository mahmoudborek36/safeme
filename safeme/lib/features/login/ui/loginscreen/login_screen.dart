import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safeme/core/app_text_button.dart';
import 'package:safeme/core/theming/spacing.dart';
import 'package:safeme/core/theming/styles.dart';
import 'package:safeme/core/widgets/app_text_form_feild.dart';
import 'package:safeme/features/login/ui/loginscreen/wedgits/dont_have_account.dart';
import 'package:safeme/features/login/ui/loginscreen/wedgits/terms_and_conditions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormFieldState>();
  bool isObscureText = true;
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

                Form(
                  key: formKey,

                  child: Column(
                    children: [
                      AppTextFormFeild(hintText: "email"),
                      verticalSpace(10),
                      AppTextFormFeild(
                        hintText: "Password",
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      verticalSpace(16),
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
                        onPressed: () {},
                      ),
                      verticalSpace(40),
                      TermsAndConditionsText(),
                      verticalSpace(30),
                      DontHaveAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
