import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safeme/core/theming/colors.dart';
import 'package:safeme/core/theming/styles.dart';

class AppTextFormFeild extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? foucuseBorder;
  final InputBorder? enableBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  const AppTextFormFeild({
    super.key,
    this.foucuseBorder,
    this.enableBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
     this.suffixIcon, this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding:contentPadding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: foucuseBorder?? OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.mainBlueColcor,
            width: 1.3,
          ),
        ),
        enabledBorder:  enableBorder?? OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.lighterGray, width: 1.3),
          borderRadius: BorderRadius.circular(16.5),
        ),
        hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: ColorsManager.lightestGray,
        filled: true
      ),
      obscureText: isObscureText?? false,
      style: TextStyles.font14DarkBlueMedium,
    );
  }
}
