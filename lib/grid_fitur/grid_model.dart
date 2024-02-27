import 'package:flutter/material.dart';

class GridModel {
  final String imagePath;
  final String title;
  final Widget destination;

  GridModel(
      {required this.imagePath,
      required this.title,
      required this.destination});
}
