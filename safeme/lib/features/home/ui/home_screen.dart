import 'package:flutter/material.dart';
import 'package:safeme/core/theming/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorsManager.mainBlueColcor),

      body: Center(child: Text("homescreeen")),
    );
  }
}
