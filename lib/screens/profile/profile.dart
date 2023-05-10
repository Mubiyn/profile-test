import 'package:flutter/material.dart';
import 'package:profile_test/models/dummy_data.dart';
import 'package:profile_test/resources/resources.dart';
import 'package:profile_test/screens/screens.dart';
import 'package:profile_test/widgets/widgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
  });
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final p = dummyProfile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SkillConnectAppBar(
        isCenter: true,
        leading: AppBackButton(),
        title: HeaderText(title: 'View Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: hPadding,
          vertical: vPadding,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileHeader(p: p),
            const VerticalSpace(isBigSpace: true),
            Align(alignment: Alignment.centerLeft, child: LastSeenWidget(p: p)),
            const AppDivider(),
            const VerticalSpace(
              isBigSpace: true,
            ),
            SummaryWidget(
              summary: p.summary,
            ),
            VerticalSpace(height: lineHeight),
            WorkExperienceWidget(
              workExperienceModel: p.workExperienceModel,
            ),
            VerticalSpace(height: lineHeight),
            ProfileSkillWidget(skills: p.skillsList),
            VerticalSpace(height: lineHeight),
            PortfolioWidget(
              portfolio: p.jobPortfolioList,
            ),
            VerticalSpace(height: lineHeight),
            ReviewWidget(
              rating: p.ratingsAndReviewsList.first,
            ),
            VerticalSpace(height: lineHeight),
          ],
        ),
      ),
    );
  }
}
