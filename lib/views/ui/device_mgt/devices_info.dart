import 'package:flutter/material.dart';
import 'package:job/views/common/app_bar.dart';
import 'package:job/views/common/drawer/drawer_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeviceManagement extends StatelessWidget {
  const DeviceManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomAppBar(
          text: "Devices Management",
          child: Padding(
            padding: EdgeInsets.all(12.0.h),
            child: const DrawerWidget(),
          ),
        ),
      ),
    );
  }
}
