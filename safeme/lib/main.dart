import 'package:flutter/material.dart';
import 'package:safeme/core/rounting/app_routing.dart';
import 'package:safeme/doc_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 2)); 
  
  runApp( DocApp(
    routing: AppRouting(),
  ));
}




