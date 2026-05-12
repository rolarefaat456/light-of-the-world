
import 'package:flutter/material.dart';

import '../../core/themes/light_mode_color.dart';

class ContainerGradient extends StatelessWidget {
  const ContainerGradient({
    super.key, required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Theme.of(context).canvasColor),
        gradient:
            LightModeColor.lightOrangeGradient, // a3ml check light wla dark
      ),
      child: child
    );
  }
}
