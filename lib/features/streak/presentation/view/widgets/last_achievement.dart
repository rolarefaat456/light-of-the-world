import 'package:flutter/material.dart';
import 'package:ligthoftheworld/core/utils/app_text_styles.dart';
import 'package:ligthoftheworld/shared/widgets/container_gradient.dart';
import 'package:ligthoftheworld/shared/widgets/custom_text.dart';

import '../../../data/achievement_model.dart';

class LastAchievement extends StatelessWidget {
  const LastAchievement({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerGradient(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title: "آخر الإنجازات",
            textStyle: AppTextStyles.style18w500(
              context: context,
              userScale: 1,
            ).copyWith(color: Theme.of(context).textTheme.bodyLarge?.color),
          ),

          const SizedBox(height: 15),

          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: achievements.length,
            separatorBuilder: (_, _) => const Divider(),
            itemBuilder: (context, index) {
              final item = achievements[index];

              return Row(
                children: [
                  Icon(item.icon, color: Colors.amber),

                  const SizedBox(width: 10),

                  Expanded(
                    child: CustomText(
                      title: item.title,
                      textStyle:
                          AppTextStyles.style16w400(
                            context: context,
                            userScale: 1,
                          ).copyWith(
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                          ),
                    ),
                  ),

                  CustomText(
                    title: item.date,
                    textStyle:
                        AppTextStyles.style14w400(
                          context: context,
                          userScale: 1,
                        ).copyWith(
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                        ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
