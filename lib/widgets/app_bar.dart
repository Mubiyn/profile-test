import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_test/resources/colors.dart';

class SkillConnectAppBar extends StatelessWidget with PreferredSizeWidget {
  const SkillConnectAppBar(
      {super.key, this.leading, this.title, this.actions, this.isCenter});

  final Widget? leading, title;
  final List<Widget>? actions;
  final bool? isCenter;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: leading,
      elevation: 0,
      title: title,
      actions: actions,
      iconTheme: const IconThemeData(color: kPrimaryColor),
      centerTitle: isCenter,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.h);
}
