import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';

class SwitchRow extends StatelessWidget {
  const SwitchRow({
    super.key,
    required this.text,
    required this.current,
    required this.firstText,
    required this.secondText,
    required this.onChange,
  });

  final String text, firstText, secondText;
  final bool current;
  final ValueChanged<bool> onChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Text(
          text,
          style: AppTextStyles.style18w700(context: context),
        ),
        AnimatedToggleSwitch<bool>.dual(
          current: current,
          first: false,
          second: true,
          onChanged: onChange,

          textBuilder: (value) => Text(
            value ? firstText : secondText,
            style: AppTextStyles.style14w700(
              context: context,
            ),
          ),
        ),
      ],
    );
  }
}
