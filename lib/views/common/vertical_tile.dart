import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job/constants/app_constants.dart';
import 'package:job/views/common/exports.dart';
import 'package:job/views/common/width_spacer.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class VerticalTile extends StatelessWidget {
  const VerticalTile({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        height: hieght * 0.15,
        width: width,
        color: Color(kLightGrey.value),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Color(kLightGrey.value),
                  radius: 30,
                  backgroundImage: const AssetImage("assets/images/slack.png"),
                ),
                const WidthSpacer(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      text: "Slack",
                      style: appstyle(20, Color(kDark.value), FontWeight.w600),
                    ),
                    SizedBox(
                      width: width * 0.5,
                      child: ReusableText(
                        text: "Flutter Developer",
                        style:
                            appstyle(18, Color(kDark.value), FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Color(kLight.value),
                  child: const Icon(Ionicons.chevron_forward),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.w),
              child: Row(
                children: [
                  ReusableText(
                    text: "20k",
                    style: appstyle(20, Color(kDark.value), FontWeight.w600),
                  ),
                  ReusableText(
                    text: "/Monthly",
                    style:
                        appstyle(20, Color(kDarkGrey.value), FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
