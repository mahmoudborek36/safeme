import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:safeme/core/helpers/extensions.dart';
import 'package:safeme/core/rounting/routes.dart';
import 'package:safeme/core/theming/styles.dart';


class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacement(Routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}