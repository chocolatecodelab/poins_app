import 'package:flutter/material.dart';
import 'package:poins/widget/app_bar_primary.dart';

class MessageView extends StatelessWidget {
  const MessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarPrimary(
        title: 'Message',
        arrowBack: false,
      ),
      body: Center(
        child: Text(
          'This is the Message page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
