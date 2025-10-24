import 'package:flutter/material.dart';
import 'package:safeme/core/rounting/routes.dart';
import 'package:safeme/features/login/ui/login_screen.dart';
import 'package:safeme/features/onboarding/onboarding_screen.dart';

class AppRouting {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      default:
        return MaterialPageRoute(builder: (_) => Placeholder());
    }
  }
}
