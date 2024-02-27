import 'package:flutter/material.dart';
import 'package:poins/widget/app_bar_primary.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarPrimary(
        arrowBack: false,
        title: 'Profile',
      ),
      body: Center(
        child: Text(
          'This is the profile page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
