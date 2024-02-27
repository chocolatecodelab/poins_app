import 'package:flutter/material.dart';

class BargingProgressModel {
  final String title;
  final String customer;
  final String description;
  final double statusIndicator;
  final Color statusWarna;
  final String statusProgress;

  BargingProgressModel(
      {required this.title,
      required this.customer,
      required this.description,
      required this.statusIndicator,
      required this.statusWarna,
      required this.statusProgress});
}
