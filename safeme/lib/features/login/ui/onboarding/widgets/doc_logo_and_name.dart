import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safeme/core/constans/assets_manager.dart';
import 'package:safeme/core/theming/styles.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AssetsManager.docDocLogo),
        SizedBox(width: 10.w),
        Text("DocDoc", style: TextStyles.font24BlackBold),
      ],
    );
  }
}
