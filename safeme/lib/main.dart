import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:safeme/core/di/dependency_injection.dart';
import 'package:safeme/core/rounting/app_routing.dart';
import 'package:safeme/doc_app.dart';



void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
 setupGetIt();
  // Keep splash until Flutter is ready
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Optional delay or initialization
  await Future.delayed(const Duration(seconds: 2));

  runApp(DocApp(routing: AppRouting()));

  // Remove splash *after* Flutter builds the first frame
  FlutterNativeSplash.remove();
}




