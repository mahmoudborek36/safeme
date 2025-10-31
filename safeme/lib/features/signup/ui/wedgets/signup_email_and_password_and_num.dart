import 'package:flutter/material.dart';
import 'package:safeme/core/helpers/app_regex.dart';
import 'package:safeme/core/theming/spacing.dart';
import 'package:safeme/core/widgets/app_text_form_feild.dart';

class SignupEmailAndPasswordAndNum extends StatefulWidget {
  const SignupEmailAndPasswordAndNum({super.key});

  @override
  State<SignupEmailAndPasswordAndNum> createState() => _SignupEmailAndPasswordAndNumState();
}

class _SignupEmailAndPasswordAndNumState extends State<SignupEmailAndPasswordAndNum> {
  
   bool isObscureText = true;

   TextEditingController controller = TextEditingController();
   TextEditingController pass = TextEditingController();
   TextEditingController num = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
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
            controller:controller ,
          ),
          verticalSpace(10),
          AppTextFormFeild(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter a valid password";
              }
            },
            controller: pass ,
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

      ],
    );
  }
}