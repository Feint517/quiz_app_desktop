import 'package:flutter/material.dart';
import 'package:quiz_app_desktop/screens/info_screen.dart';
import 'package:quiz_app_desktop/utils/colors.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          Row(
            children: [
              const Text('Quiz'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InfoPage()));
                  },
                  child: const Text('Start'))
            ],
          )
        ],
      ),
    );
  }
}
