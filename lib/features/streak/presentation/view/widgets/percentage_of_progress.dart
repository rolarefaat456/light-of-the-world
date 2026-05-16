import 'package:flutter/material.dart';
import 'package:ligthoftheworld/core/utils/app_text_styles.dart';
import '../../../../../shared/widgets/container_gradient.dart';
import '../../../../../shared/widgets/custom_text.dart';

class PercentageOfProgress extends StatelessWidget {
  const PercentageOfProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerGradient(
      child: Row(
        children: [
          Expanded(
            child: Column(
              spacing: 8,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                      width: 6,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(
                          context,
                        ).colorScheme.primary.withValues(alpha: 0.4),
                        blurRadius: 30,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_fire_department,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      CustomText(
                        title: '27',
                        textStyle:
                            AppTextStyles.style18w500(
                              context: context,
                            ).copyWith(
                              color: Theme.of(
                                context,
                              ).textTheme.bodyLarge?.color,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: CustomText(
                      title: 'نسبة التقدم السنوي',
                      textStyle:
                          AppTextStyles.style18w500(
                            context: context,

                          ).copyWith(
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                          ),
                    ),
                  ),
                  Center(
                    child: CustomText(
                      title: '34%',
                      textStyle:
                          AppTextStyles.style18w500(
                            context: context,

                          ).copyWith(
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                          ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: LinearProgressIndicator(
                      value: .34,
                      minHeight: 14,
                      backgroundColor: Theme.of(context).cardColor,
                      valueColor: AlwaysStoppedAnimation(
                        Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  Center(
                    child: CustomText(
                      title: 'خلصت 34% من خطة العهد الجديد',
                      textStyle: AppTextStyles.style18w500(
                        context: context
                      ).copyWith(color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
