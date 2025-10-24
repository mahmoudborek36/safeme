import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safeme/core/theming/styles.dart';
import 'package:safeme/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:safeme/features/onboarding/widgets/get_started_button.dart';
import 'package:safeme/features/onboarding/widgets/logo_doc_text.dart';
import 'package:safeme/features/onboarding/widgets/text_and_button_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                DocLogoAndName(),
                SizedBox(height: 30.h),
                LogoAndDocAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: TextAndButtonWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
