import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safeme/core/rounting/app_routing.dart';
import 'package:safeme/core/rounting/routes.dart';
import 'package:safeme/core/theming/colors.dart';

class DocApp extends StatefulWidget {
  final AppRouting routing;

  const DocApp({super.key, required this.routing});

  @override
  State<DocApp> createState() => _DocAppState();
}

class _DocAppState extends State<DocApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: "SafeMe",
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlueColcor,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.homeScreen,
        onGenerateRoute: widget.routing.generateRoute,
      ),
    );
  }
}
