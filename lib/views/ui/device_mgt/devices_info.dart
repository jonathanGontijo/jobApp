import 'package:flutter/material.dart';
import 'package:job/constants/app_constants.dart';
import 'package:job/controllers/exports.dart';
import 'package:job/views/common/app_bar.dart';
import 'package:job/views/common/app_style.dart';
import 'package:job/views/common/drawer/drawer_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job/views/common/exports.dart';
import 'package:job/views/common/height_spacer.dart';
import 'package:job/views/ui/device_mgt/widgets/device_info.dart';
import 'package:get/get.dart';
import 'package:job/views/ui/onboarding/onboarding_screen.dart';
import 'package:provider/provider.dart';

class DeviceManagement extends StatelessWidget {
  const DeviceManagement({super.key});

  @override
  Widget build(BuildContext context) {
    var zoomNotifier = Provider.of<ZoomNotifier>(context);
    var onBoardNotifier = Provider.of<OnBoardNotifier>(context);
    String date = DateTime.now().toString();
    var loginDate = date.substring(0, 11);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(10.h),
        child: CustomAppBar(
          text: "Devices Management",
          child: Padding(
            padding: EdgeInsets.all(12.0.h),
            child: const DrawerWidget(),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeightSpacer(size: 50),
                  Text(
                    "You are logged in into your account on these devices",
                    style: appstyle(16, Color(kDark.value), FontWeight.normal),
                  ),
                  const HeightSpacer(size: 50),
                  DeviceInfo(
                    location: "Washington DC",
                    device: "Macbook M1",
                    platform: "Apple Webkit",
                    date: loginDate,
                    ipAdress: "10.0.12.000",
                  ),
                  const HeightSpacer(size: 50),
                  DeviceInfo(
                    location: "Brooklyn",
                    device: "Iphone 15",
                    platform: "Mobile App",
                    date: loginDate,
                    ipAdress: "10.0.12.000",
                  ),
                ],
              ),
            ),
            Consumer<LoginNotifier>(
              builder: (context, loginNotifier, child) {
                return Padding(
                  padding: EdgeInsets.all(8.0.h),
                  child: GestureDetector(
                    onTap: () {
                      zoomNotifier.currentIndex = 0;
                      onBoardNotifier.isLastPage = false;
                      Get.to(() => const OnBoardingScreen());
                    },
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ReusableText(
                        text: "Sign Out of all devices",
                        style:
                            appstyle(16, Color(kOrange.value), FontWeight.w600),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
