import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_test/resources/resources.dart';
import 'package:profile_test/widgets/widgets.dart';

TextStyle headerTextStyle = GoogleFonts.poppins(
  fontSize: bodyLarge,
  color: kPrimaryColor,
  fontWeight: FontWeight.w600,
);
TextStyle bodyTextStyle = GoogleFonts.poppins(
  fontSize: bodyLarge * 0.9,
  color: kTextColor,
  fontWeight: FontWeight.w400,
);

class ProfileTextWidget extends StatelessWidget {
  const ProfileTextWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: vPadding),
      child: RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
              text: '$title: ',
              style: headerTextStyle,
              children: [TextSpan(text: subtitle, style: bodyTextStyle)])),
    );
  }
}

class HeaderText extends StatelessWidget {
  const HeaderText(
      {super.key,
      required this.title,
      this.fontSize,
      this.textlineHeight,
      this.textColor,
      this.fontWeight});
  final String title;
  final double? fontSize, textlineHeight;
  final Color? textColor;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: fontSize ?? headerFontSize,
        color: textColor ?? kPrimaryColor,
        fontWeight: fontWeight ?? FontWeight.bold,
      ),
    );
  }
}

class BodyText extends StatelessWidget {
  const BodyText(
      {super.key,
      required this.title,
      this.textColor,
      this.fontWeight,
      this.isBodySmall = true,
      this.textDecoration,
      this.fontSize});
  final String title;
  final Color? textColor;
  final FontWeight? fontWeight;
  final bool? isBodySmall;
  final TextDecoration? textDecoration;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: fontSize ?? (!isBodySmall! ? bodyMedium : bodySmall),
        color: textColor ?? kPrimaryColor,
        fontWeight: fontWeight ?? FontWeight.w400,
        decoration: textDecoration,
      ),
    );
  }
}

class IconText extends StatelessWidget {
  const IconText({
    super.key,
    this.icon,
    required this.text,
    this.suffixText,
    this.hasIcon = true,
    this.hasSuffix = false,
  });
  final String text;
  final String? suffixText, icon;
  final bool? hasIcon, hasSuffix;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (hasIcon!)
          Row(
            children: [
              AppSvgWidget(assetName: icon!),
              const HorizontalSpace(),
            ],
          ),
        BodyText(
          title: text,
          textColor: kTextColorLight,
        ),
        if (hasSuffix!)
          Container(
            margin: EdgeInsets.only(left: 6..w),
            padding: EdgeInsets.symmetric(horizontal: 14..w, vertical: 2..h),
            decoration: BoxDecoration(
                color: kPrimaryColorLight,
                borderRadius: BorderRadius.circular(buttonBorderRadius)),
            child: BodyText(
              title: suffixText!,
              textColor: kTextColor,
            ),
          )
      ],
    );
  }
}
