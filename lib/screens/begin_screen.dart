import 'package:flutter/material.dart';
import 'package:quiz_app_desktop/screens/info_screen.dart';
import 'package:quiz_app_desktop/utils/colors.dart';

class Begin extends StatelessWidget {
  final String name;

  const Begin({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Center(
        child: Stack(
          children: [
            Center(
              heightFactor: 400,
              child: Column(
                children: [
                  Text(
                    'Hello $name, ready to start?',
                    style: const TextStyle(
                      color: AppColors.accent,
                      fontSize: 30.0,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
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
                            builder: (context) => const InfoPage()));
                  },
                  child: const Text('Back'),
                )),
          ],
        ),
      ),
    );
  }
}
