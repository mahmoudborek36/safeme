import 'package:flutter/material.dart';
import 'package:safeme/core/theming/colors.dart';
import 'package:safeme/core/theming/spacing.dart';
import 'package:safeme/core/theming/styles.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidation({super.key, required this.hasLowerCase, required this.hasUpperCase, required this.hasSpecialCharacter, required this.hasNumber, required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("AT least 1 lowercase letter", hasLowerCase),
        verticalSpace(2),
        buildValidationRow("AT least 1 uppercase letter", hasUpperCase),
        verticalSpace(2),
        buildValidationRow("AT least 1 specialcharacter letter", hasSpecialCharacter),
        verticalSpace(2),
        buildValidationRow("AT least 1 number letter", hasNumber),
        verticalSpace(2),
        buildValidationRow("AT least 8 character long", hasMinLength),
        verticalSpace(2),
      ],
    );
  }
  
 Widget buildValidationRow(String text, bool hasValidated) {
  return Row(children: [
    CircleAvatar(
      radius: 2.5,
      backgroundColor: ColorsManager.grayColor,
    ),
    horizontilSpace(6),
    Text(text,style: TextStyles.font13BlueRegular.copyWith(
      decoration: hasValidated ?TextDecoration.lineThrough :null, 
      decorationColor: Colors.green ,
      decorationThickness: 2,
      color:  hasValidated ? ColorsManager.grayColor :ColorsManager.darkBlue
    ),),

  ],);
 }
}
