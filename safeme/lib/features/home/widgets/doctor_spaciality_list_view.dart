import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:safeme/core/theming/spacing.dart';
import 'package:safeme/core/theming/styles.dart';

class DoctorSpacialityListView extends StatelessWidget {
  const DoctorSpacialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.lightBlue,
                  child: SvgPicture.asset("assets/svg/Button_notification.svg"),
                ),
                verticalSpace(8),
                Text("speciality", style: TextStyles.font12GrayRegular),
              ],
            ),
          );
        },
      ),
    );
  }
}
