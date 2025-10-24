import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safeme/core/rounting/app_routing.dart';
import 'package:safeme/core/rounting/routes.dart';
import 'package:safeme/core/theming/colors.dart';

class DocApp extends StatelessWidget {
    final AppRouting routing;

  const DocApp({super.key, required this.routing});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: "",
        theme: ThemeData(
          primaryColor:ColorsManager.mainBlueColcor ,
          scaffoldBackgroundColor: Colors.white

        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: routing.generateRoute,
      ),
    );
  }
}
