import 'package:flutter/material.dart';
import 'package:job/constants/app_constants.dart';
import 'package:job/views/common/exports.dart';
import 'package:job/views/common/height_spacer.dart';
import 'package:job/views/common/width_spacer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class JobHorizontalTile extends StatelessWidget {
  const JobHorizontalTile({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          width: width * 0.7,
          height: hieght * 0.27,
          color: Color(kLightGrey.value),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Facebook.png"),
                  ),
                  const WidthSpacer(width: 15),
                  ReusableText(
                    text: "FaceBook",
                    style: appstyle(
                      20,
                      Color(kDark.value),
                      FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const HeightSpacer(size: 15),
              ReusableText(
                text: "Sennior Flutter Developer",
                style: appstyle(
                  20,
                  Color(kDark.value),
                  FontWeight.w600,
                ),
              ),
              ReusableText(
                text: "Washington Dc",
                style: appstyle(
                  16,
                  Color(kDarkGrey.value),
                  FontWeight.w600,
                ),
              ),
              const HeightSpacer(size: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ReusableText(
                          text: "15k",
                          style: appstyle(
                              23, Color(kDark.value), FontWeight.w600)),
                      ReusableText(
                          text: "/Monthly",
                          style: appstyle(
                              23, Color(kDarkGrey.value), FontWeight.w600)),
                    ],
                  ),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Color(kLight.value),
                    child: const Icon(Ionicons.chevron_forward),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
