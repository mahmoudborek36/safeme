import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safeme/core/helpers/app_regex.dart';
import 'package:safeme/core/theming/spacing.dart';
import 'package:safeme/core/widgets/app_text_form_feild.dart';
import 'package:safeme/features/login/ui/loginscreen/cubit/login_cubit.dart';
import 'package:safeme/features/login/ui/loginscreen/wedgits/password_validation.dart';

class EmailPassword extends StatefulWidget {
  const EmailPassword({super.key});

  @override
  State<EmailPassword> createState() => _EmailPasswordState();
}

class _EmailPasswordState extends State<EmailPassword> {
  final formKey = GlobalKey<FormFieldState>();
  bool isObscureText = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacter = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  late TextEditingController passwordController = TextEditingController();
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacter = AppRegex.hasSpecialCharacter(
          passwordController.text,
        );
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormFeild(
            hintText: "email",
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return "Please enter a valid email";
              }
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          verticalSpace(10),
          AppTextFormFeild(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter a valid password";
              }
            },
            controller: context.read<LoginCubit>().passwordController,
            hintText: "Password",
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),
          verticalSpace(24),
          PasswordValidation(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacter: hasSpecialCharacter,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    passwordController.dispose();
  }
}
