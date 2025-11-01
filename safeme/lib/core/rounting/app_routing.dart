import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safeme/core/di/dependency_injection.dart';
import 'package:safeme/core/rounting/routes.dart';
import 'package:safeme/features/home/ui/home_screen.dart';
import 'package:safeme/features/login/ui/loginscreen/cubit/login_cubit.dart';
import 'package:safeme/features/login/ui/loginscreen/login_screen.dart';
import 'package:safeme/features/login/ui/onboarding/onboarding_screen.dart';
import 'package:safeme/features/login/ui/onboarding/splash_screen.dart';
import 'package:safeme/features/signup/logic/signup_cubit.dart';
import 'package:safeme/features/signup/ui/signyp_screen.dart';

class AppRouting {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => BlocProvider(
          create: (context) => getIt<SignupCubit>() ,
          child: SignypScreen()));
      case Routes.loginScreen:
        return  MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) => Placeholder());
    }
  }
}
