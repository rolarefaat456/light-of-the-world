import 'package:flutter/material.dart';

class AchievementModel {
  final String title;
  final String date;
  final IconData icon;

  AchievementModel({
    required this.title,
    required this.date,
    required this.icon,
  });
}

List<AchievementModel> achievements = [
  AchievementModel(
    title: "إنجاز 1",
    date: "2024-06-01",
    icon: Icons.star,
  ),
  AchievementModel(
    title: "إنجاز 2",
    date: "2024-06-02",
    icon: Icons.star_border,
  ),
  AchievementModel(
    title: "إنجاز 3",
    date: "2024-06-03",
    icon: Icons.star_half,
  ),
];