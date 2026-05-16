import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class LengedItem extends StatelessWidget {
  const LengedItem({super.key, required this.icon, required this.text, required this.color});
  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: color),

        const SizedBox(width: 4),

        Text(
          text,
          style: AppTextStyles.style14w400(
            context: context,
            userScale: 1,
          ).copyWith(color: color),
        ),
      ],
    );
  }
}