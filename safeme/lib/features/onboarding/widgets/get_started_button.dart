import 'package:flutter/material.dart';
import 'package:safeme/core/helpers/extensions.dart';
import 'package:safeme/core/rounting/routes.dart';
import 'package:safeme/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.blue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
        ),
      ),
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },

      child: Text(
        "Get started",
        style: TextStyles.fon13GreyRegular.copyWith(color: Colors.white),
      ),
    );
  }
}
