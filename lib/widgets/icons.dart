import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile_test/resources/resources.dart';

class AppSvgWidget extends StatelessWidget {
  const AppSvgWidget(
      {super.key,
      required this.assetName,
      this.svgColor,
      this.width,
      this.height});
  final String assetName;
  final Color? svgColor;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      height: height,
      width: width,
    );
  }
}

class AppImageWidget extends StatelessWidget {
  const AppImageWidget({
    super.key,
    required this.assetName,
    this.width,
    this.height,
  });
  final String assetName;

  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetName,
      height: height,
      width: width,
    );
  }
}

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppSvgWidget(
        assetName: backArrowSVG,
        height: 15.h,
      ),
    );
  }
}

class YellowStarWidget extends StatelessWidget {
  const YellowStarWidget({super.key, this.height, this.width});
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.0.w),
      child: AppSvgWidget(
        assetName: starSmallSVG,
        height: 12.h,
        width: 12.h,
      ),
    );
  }
}

class BlueStarWidget extends StatelessWidget {
  const BlueStarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppSvgWidget(
      assetName: starBigSVG,
    );
  }
}
