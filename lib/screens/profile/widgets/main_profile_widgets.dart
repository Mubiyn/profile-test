import 'package:flutter/material.dart';
import 'package:profile_test/models/models.dart';
import 'package:profile_test/resources/resources.dart';
import 'package:profile_test/screens/screens.dart';
import 'package:profile_test/widgets/widgets.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    super.key,
    required this.rating,
  });
  final RatingsAndReview rating;

  @override
  Widget build(BuildContext context) {
    return ProfileContainer(
      icon: starBigSVG,
      trailingText: 'See More',
      titleText: 'Ratings and Reviews (8)',
      child: ProfileRatingsWidget(
        ratings: rating,
      ),
    );
  }
}

class PortfolioWidget extends StatelessWidget {
  const PortfolioWidget({
    super.key,
    required this.portfolio,
  });
  final List<JobPortfolio> portfolio;

  @override
  Widget build(BuildContext context) {
    return ProfileContainer(
      icon: documentSVG,
      titleText: 'Job Portfolio',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...portfolio.map((e) => SkillsWidget(
                image: e.image,
                skill: e.name,
              )),
        ],
      ),
    );
  }
}

class ProfileSkillWidget extends StatelessWidget {
  const ProfileSkillWidget({
    super.key,
    required this.skills,
  });
  final List<String> skills;

  @override
  Widget build(BuildContext context) {
    return ProfileContainer(
      icon: chartSVG,
      titleText: 'Skills',
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.start,
        runSpacing: vPadding,
        spacing: hPadding,
        children: [
          ...skills.map((e) => SkillsContainer(
                title: e,
              ))
        ],
      ),
    );
  }
}

class WorkExperienceWidget extends StatelessWidget {
  const WorkExperienceWidget({
    super.key,
    required this.workExperienceModel,
  });
  final List<WorkExperienceModel> workExperienceModel;

  @override
  Widget build(BuildContext context) {
    return ProfileContainer(
      icon: workSVG,
      titleText: 'Work Experience',
      child: Column(
        children: [
          ...workExperienceModel.map(
            (e) => WorkExpericenceWidget(
              date: e.date,
              name: e.name,
              role: e.role,
            ),
          )
        ],
      ),
    );
  }
}

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({
    super.key,
    required this.summary,
  });
  final String summary;

  @override
  Widget build(BuildContext context) {
    return ProfileContainer(
      icon: documentSVG,
      titleText: 'Summary',
      child: BodyText(
        title: summary,
        textColor: kTextColorLight,
      ),
    );
  }
}
