import 'package:flutter/material.dart';
import 'package:poins/widget/colors.dart';

class AppBarSecondary extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final PreferredSize bottom;

  // final Function()? onSearchPressed;
  // final Function()? onNotificationPressed;

  const AppBarSecondary({
    Key? key,
    required this.title,
    required this.bottom,
    // this.onSearchPressed,
    // this.onNotificationPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
      bottom: bottom,
      backgroundColor: AppColors.primaryColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
