import 'package:flutter/material.dart';
import 'package:quiz_app_desktop/screens/info_screen.dart';
import 'package:quiz_app_desktop/screens/question1_screen.dart';
import 'package:quiz_app_desktop/utils/colors.dart';

class Begin extends StatelessWidget {
  final String firstName;
  final String lastName;

  const Begin({
    super.key,
    required this.firstName,
    required this.lastName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello $firstName $lastName, ready to start?',
                  style: const TextStyle(
                    color: AppColors.accent,
                    fontSize: 30.0,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Question(),
                      ),
                    );
                  },
                  child: const Text('Begin'),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InfoPage(),
                  ),
                );
              },
              child: const Text('Back'),
            ),
          ),
        ],
      ),
    );
  }
}
