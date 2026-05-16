import 'package:flutter/material.dart';
import '../../../../core/utils/app_text_styles.dart';

class KatamarsView extends StatelessWidget {
  const KatamarsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Welcome to the mangalya!',
        style: AppTextStyles.style24w700(context: context),
      ),
    );
  }
}