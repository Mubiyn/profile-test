import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:profile_test/screens/screens.dart';

void main() {
  testWidgets('Profile screen should display all widgets',
      (WidgetTester tester) async {
    // Build the widget tree
    await tester.pumpWidget(ScreenUtilInit(
        designSize: const Size(390, 812),
        builder: (BuildContext context, Widget? child) {
          return const MaterialApp(home: ProfileScreen());
        }));

    // Find all the widgets displayed in the ProfileScreen
    final appBarTitle = find.text('View Profile');
    final profileHeader = find.byType(ProfileHeader);
    final lastSeenWidget = find.byType(LastSeenWidget);
    final summaryWidget = find.byType(SummaryWidget);
    final workExperienceWidget = find.byType(WorkExperienceWidget);
    final profileSkillWidget = find.byType(ProfileSkillWidget);
    final portfolioWidget = find.byType(PortfolioWidget);
    final reviewWidget = find.byType(ReviewWidget);

    // Check that all the widgets are displayed
    expect(appBarTitle, findsOneWidget);
    expect(profileHeader, findsOneWidget);
    expect(lastSeenWidget, findsOneWidget);
    expect(summaryWidget, findsOneWidget);
    expect(workExperienceWidget, findsOneWidget);
    expect(profileSkillWidget, findsOneWidget);
    expect(portfolioWidget, findsOneWidget);
    expect(reviewWidget, findsOneWidget);
  });
}
