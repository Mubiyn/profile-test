// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:profile_test/resources/resources.dart';
import 'package:profile_test/widgets/widgets.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: kTextColorLight,
    );
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.isSecondaryButton = false,
    this.textFontSize,
    required this.borderColor,
    this.textColor,
    this.btnText,
  }) : super(key: key);
  final bool? isSecondaryButton;
  final double? textFontSize;
  final Color? textColor, borderColor;
  final String? btnText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isSecondaryButton! ? buttonHeightBig : buttonHeightSmall,
      decoration: BoxDecoration(
          gradient: isSecondaryButton!
              ? kAppWhiteGradientColor
              : kAppLinearGradientColor,
          border: Border.all(color: kPrimaryColor),
          borderRadius: BorderRadius.circular(
              isSecondaryButton! ? containerBorderRadius : buttonBorderRadius)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (!isSecondaryButton!)
            Row(
              children: const [
                AppSvgWidget(assetName: sendSVG),
                HorizontalSpace(),
              ],
            ),
          BodyText(
            title: btnText ?? 'Send Message',
            fontSize: isSecondaryButton! ? bodyMedium : bodySmall,
            fontWeight: isSecondaryButton! ? FontWeight.w500 : FontWeight.w400,
            textColor: !isSecondaryButton! ? Colors.white : kPrimaryColor,
          )
        ],
      ),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  const ProfileContainer(
      {super.key,
      required this.icon,
      required this.titleText,
      required this.child,
      this.trailingText});
  final String icon, titleText;
  final String? trailingText;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: vPadding),
      decoration: BoxDecoration(
          border: Border.all(color: kPrimaryColorLight),
          borderRadius: BorderRadius.circular(containerBorderRadius)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: hPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    AppSvgWidget(assetName: icon),
                    const HorizontalSpace(),
                    HeaderText(
                      title: titleText,
                      textColor: kTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: headerFontSize * 0.7,
                    ),
                  ],
                ),
                if (trailingText != null)
                  BodyText(
                      title: trailingText!,
                      textColor: kTextColor,
                      textDecoration: TextDecoration.underline)
              ],
            ),
          ),
          const VerticalSpace(),
          const AppDivider(),
          const VerticalSpace(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: hPadding,
            ),
            child: child,
          )
        ],
      ),
    );
  }
}

class SkillsContainer extends StatelessWidget {
  const SkillsContainer({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding * 0.4),
      decoration: BoxDecoration(
          border: Border.all(color: kPrimaryColor),
          borderRadius: BorderRadius.circular(20..sp)),
      child: BodyText(
          title: title,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          textColor: kTextColor,
          isBodySmall: false),
    );
  }
}
