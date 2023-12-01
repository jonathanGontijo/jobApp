import 'package:flutter/material.dart';
import 'package:job/constants/app_constants.dart';
import 'package:job/views/common/app_style.dart';
import 'package:job/views/common/height_spacer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hieght,
      color: Color(kDarkBlue.value),
      child: Column(
        children: [
          const HeightSpacer(size: 65),
          Padding(
            padding: EdgeInsets.all(8.h),
            child: Image.asset("assets/images/page2.png"),
          ),
          const HeightSpacer(size: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Stable Yourself \n With Your Ability",
                style: appstyle(30, Color(kLight.value), FontWeight.w500),
              ),
              const HeightSpacer(size: 10),
              Padding(
                padding: EdgeInsets.all(8.h),
                child: Text(
                  "We help you find your dream job according to your skills",
                  textAlign: TextAlign.center,
                  style: appstyle(14, Color(kLight.value), FontWeight.normal),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
