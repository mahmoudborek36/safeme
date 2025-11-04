import 'package:flutter/material.dart';
import 'package:safeme/core/theming/colors.dart';
import 'package:safeme/core/theming/spacing.dart';
import 'package:safeme/features/home/widgets/doctor_blue_container.dart';
import 'package:safeme/features/home/widgets/doctor_list_view.dart';
import 'package:safeme/features/home/widgets/doctor_spaciality_list_view.dart';
import 'package:safeme/features/home/widgets/doctor_speciality_see_all.dart';
import 'package:safeme/features/home/widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTopBar(),
              verticalSpace(2),
              DoctorBlueContainer(),
              verticalSpace(16),
              DoctorSpecialitySeeAll(),
              verticalSpace(15),
              DoctorSpacialityListView(),

              DoctorListView(),
            ],
          ),
        ),
      ),
    );
  }
}
