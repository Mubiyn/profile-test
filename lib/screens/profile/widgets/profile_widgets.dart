import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_test/models/models.dart';
import 'package:profile_test/resources/resources.dart';
import 'package:profile_test/widgets/widgets.dart';

class LastSeenWidget extends StatelessWidget {
  const LastSeenWidget({
    super.key,
    required this.p,
  });
  final ProfileModel p;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileTextWidget(subtitle: p.joinDate, title: 'Join Date'),
        ProfileTextWidget(
            subtitle: p.completedJobs.toString(), title: 'Completed Jobs'),
        ProfileTextWidget(subtitle: p.lastSeen, title: 'Last Seen'),
        VerticalSpace(
          height: 4.h,
        ),
      ],
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
    required this.p,
  });
  final ProfileModel p;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 54.sp,
              backgroundColor: kPrimaryColorLight,
              child: const AppImageWidget(assetName: profilePNG),
            ),
            Container(
              height: 12.h,
              width: 12.h,
              margin: EdgeInsets.only(right: 10.w, bottom: 10.h),
              decoration: const BoxDecoration(
                  color: Colors.green, shape: BoxShape.circle),
            )
          ],
        ),
        const VerticalSpace(isBigSpace: true),
        HeaderText(
            title: p.fullName,
            fontSize: bodyLarge,
            textColor: kTextColor,
            textlineHeight: bodyLarge),
        const VerticalSpace(),
        HeaderText(
          title: p.occupation,
          fontSize: bodyMedium,
          textColor: kTextColor,
          fontWeight: FontWeight.w400,
        ),
        const VerticalSpace(),
        RatingsWidget(rate: p.rating),
        VerticalSpace(height: lineHeight),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconText(icon: locationSVG, text: p.location),
            IconText(icon: callSVG, text: p.phone),
          ],
        ),
        const VerticalSpace(isBigSpace: true),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconText(icon: messageSVG, text: p.email),
            IconText(
                hasIcon: false,
                text: 'Experience',
                hasSuffix: true,
                suffixText: p.experience),
          ],
        ),
        const VerticalSpace(isBigSpace: true),
        const PrimaryButton(borderColor: kPrimaryColor),
        const VerticalSpace(isBigSpace: true),
        const AppDivider(),
      ],
    );
  }
}

class ProfileRatingsWidget extends StatelessWidget {
  const ProfileRatingsWidget({
    super.key,
    required this.ratings,
  });
  final RatingsAndReview ratings;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                AppImageWidget(assetName: ratings.picture),
                const HorizontalSpace(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderText(
                      title: ratings.name,
                      fontSize: bodyLarge,
                      fontWeight: FontWeight.w600,
                      textColor: kTextColor,
                    ),
                    RatingsWidget(
                      rate: ratings.rating,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0.h),
              child: BodyText(
                title: ratings.time,
                textColor: kTextColor,
              ),
            ),
          ],
        ),
        const VerticalSpace(),
        BodyText(
          title: ratings.description,
          textColor: kTextColorLight,
        ),
        const VerticalSpace(),
        const AppDivider(),
        const VerticalSpace(),
        const PrimaryButton(
          borderColor: kPrimaryColor,
          isSecondaryButton: true,
          btnText: 'Write a Review',
        )
      ],
    );
  }
}

class RatingsWidget extends StatelessWidget {
  const RatingsWidget({
    super.key,
    required this.rate,
  });
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(5, (index) => const YellowStarWidget()),
        BodyText(
          title: rate.toString(),
          isBodySmall: false,
          textColor: kTextColor,
          fontWeight: FontWeight.bold,
        )
      ],
    );
  }
}

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({
    super.key,
    required this.skill,
    required this.image,
  });
  final String skill, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(containerBorderRadius),
          child: AppImageWidget(assetName: image),
        ),
        const VerticalSpace(),
        BodyText(
            title: skill,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            textColor: kTextColor,
            isBodySmall: false),
      ],
    );
  }
}

class WorkExpericenceWidget extends StatelessWidget {
  const WorkExpericenceWidget({
    super.key,
    required this.role,
    required this.name,
    required this.date,
  });
  final String role, name, date;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: hPadding * 1.3),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: 45.h,
            width: 45.h,
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.14),
              borderRadius: BorderRadius.circular(buttonBorderRadius),
            ),
            child: HeaderText(title: name.substring(0, 1)),
          ),
          const HorizontalSpace(
            isBigSpace: true,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderText(
                title: role,
                fontSize: bodyLarge * 0.9,
                fontWeight: FontWeight.w600,
              ),
              BodyText(
                title: name,
                fontWeight: FontWeight.w500,
                textColor: kTextColor,
              ),
              BodyText(
                title: date,
                fontWeight: FontWeight.w400,
                textColor: kTextColorLight,
              )
            ],
          )
        ],
      ),
    );
  }
}
