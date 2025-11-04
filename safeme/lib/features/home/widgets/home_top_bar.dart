import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safeme/core/theming/colors.dart';
import 'package:safeme/core/theming/spacing.dart';
import 'package:safeme/core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello, Borek", style: TextStyles.font18DarkBlueBold),

            Text("How are you today?", style: TextStyles.font12GrayRegular),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorsManager.lighterGray,
          child: SvgPicture.asset("assets/svg/Button_notification.svg"),
        ),
      ],
    );
  }
}
