import 'package:flutter/material.dart';
import 'package:safeme/core/theming/spacing.dart';
import 'package:safeme/features/home/doctor.list/doctors_list_view.dart';
import 'package:safeme/features/home/doctor.list/doctros_bloc_builder.dart';
import 'package:safeme/features/home/specializations_list/specializations_bloc_builder.dart';
import 'package:safeme/features/home/widgets/doctor_blue_container.dart';
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
          margin: const EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(24),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(18),
              const SpecializationsBlocBuilder(),
              verticalSpace(8),
              const DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}