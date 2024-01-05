import 'package:flutter/material.dart';
import 'package:quiz_app_desktop/utils/colors.dart';

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Center(
        child: SizedBox(
          height: 550,
          width: 950,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.primary,
              border: Border.all(
                style: BorderStyle.none,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(40),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const Text(
                      'Question1',
                      style: TextStyle(
                        color: AppColors.accent,
                        fontSize: 50,
                      ),
                    ),
                    const Text(
                      'Idk what to say here',
                      style: TextStyle(
                        color: AppColors.secondary,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: AppColors.accent,
                          ),
                          child: Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: 1,
                                onChanged: (value) {
                                  print(value);
                                },
                              ),
                              const Text(
                                'kjbfvkjbfkbdvkjbdkvbskbvskbkbfksvslbvbs',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
