import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safeme/core/constans/assets_manager.dart';
import 'package:safeme/core/theming/styles.dart';

class LogoAndDocAndText extends StatelessWidget {
  const LogoAndDocAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
      child: Stack(
        children: [
          SvgPicture.asset(AssetsManager.bigLogo),
          Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.white.withOpacity(0.0)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.14, 0.4],
              ),
            ),
            child: Image.asset(AssetsManager.onbordingDoc),
          ),
          Positioned(
            
            bottom: 30,
            right: 0,
            left: 0,
            child: Text(
              
              "Best Doctor Appointment App",
              textAlign: TextAlign.center,
              style: TextStyles.font32BlueBold.copyWith(height: 1.3),
            ),
          ),
        ],
      ),
    );
  }
}
