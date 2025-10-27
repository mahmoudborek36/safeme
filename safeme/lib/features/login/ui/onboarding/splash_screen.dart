import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:safeme/core/constans/assets_manager.dart';
import 'package:safeme/core/helpers/extensions.dart';
import 'package:safeme/core/rounting/routes.dart';
import 'package:safeme/core/theming/styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        context.pushNamed(Routes.onBoardingScreen);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                SvgPicture.asset(AssetsManager.bigLogo),

                Positioned(
                  top: 0.h,
                  bottom: 0.h,
                  left: 15.w,
                  child: Row(
                    children: [
                      SvgPicture.asset(AssetsManager.docDocLogo, width: 70),

                      Text("DocDoc", style: TextStyles.font24BlackBold),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
