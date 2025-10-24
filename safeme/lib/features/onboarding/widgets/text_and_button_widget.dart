import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safeme/core/theming/styles.dart';
import 'package:safeme/features/onboarding/widgets/get_started_button.dart';

class TextAndButtonWidget extends StatelessWidget {
  const TextAndButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
          textAlign: TextAlign.center,
          style: TextStyles.fon13GreyRegular.copyWith(
            fontSize: 13.sp,
          ),
        ),
        SizedBox(height: 30.h),
        GetStartedButton(),
      ],
    );
  }
}
