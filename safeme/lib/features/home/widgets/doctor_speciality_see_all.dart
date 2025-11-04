import 'package:flutter/material.dart';
import 'package:safeme/core/theming/styles.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Doctor Speciality", style: TextStyles.font18DarkBlueBold),
        Spacer(),
        Text("See all", style: TextStyles.font12BlueRegular),
      ],
    );
  }
}
