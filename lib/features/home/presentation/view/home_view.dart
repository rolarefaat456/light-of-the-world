import 'package:flutter/material.dart';
import 'package:ligthoftheworld/core/utils/app_text_styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Welcome to the Home View!',
            style: AppTextStyles.style24w700(
              context: context,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.local_fire_department, color: Colors.orange),
              title: Text("Your Streak"),
              subtitle: Text("5 days in a row 🔥"),
            ),
          ),
        ],
      ),
    );
  }
}
