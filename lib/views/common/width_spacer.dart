import 'package:flutter/material.dart';
import 'package:job/constants/app_constants.dart';

class WidthSpacer extends StatelessWidget {
  const WidthSpacer({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
