import 'package:flutter/material.dart';
import 'package:quiz_app_desktop/utils/colors.dart';

class Score extends StatefulWidget {
  const Score({super.key});

  @override
  State<Score> createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  late int? grade = ModalRoute.of(context)?.settings.arguments as int;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You scored',
              style: TextStyle(
                fontSize: 30,
                color: AppColors.secondary,
              ),
            ),
            Text(
              '$grade',
              style: const TextStyle(
                fontSize: 170,
                color: AppColors.accent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
