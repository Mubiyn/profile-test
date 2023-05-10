import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final buttonHeightSmall = 39.h;
final buttonHeightBig = 61.h;
final buttonBorderRadius = 3.h;
final containerBorderRadius = 10.h;
final headerFontSize = 24.sp;
final lineHeight = 30.h;
final bodyLarge = 20.sp;
final bodyMedium = 15.sp;
final bodySmall = 11.h;
final smallPadding = 10.h;
final bigPadding = 18.h;
final hPadding = 16.h;
final vPadding = 16.h;

class VerticalSpace extends StatelessWidget {
  const VerticalSpace({
    super.key,
    this.isBigSpace = false,
    this.height,
  });
  final bool? isBigSpace;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? (isBigSpace! ? bigPadding : smallPadding),
    );
  }
}

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace({
    super.key,
    this.isBigSpace = false,
    this.width,
  });
  final bool? isBigSpace;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? (isBigSpace! ? bigPadding : smallPadding),
    );
  }
}
