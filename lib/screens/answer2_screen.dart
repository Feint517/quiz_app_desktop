import 'dart:io';

import 'package:flutter/material.dart';
import 'package:quiz_app_desktop/screens/answer1_screen.dart';
import 'package:quiz_app_desktop/utils/colors.dart';

class Answer2 extends StatefulWidget {
  const Answer2({super.key});

  @override
  State<Answer2> createState() => _Answer2State();
}

class _Answer2State extends State<Answer2> {
  bool? answer1 = false;
  bool? answer2 = false;
  bool? answer3 = false;

  @override
  Widget build(BuildContext context) {
    late int? grade = ModalRoute.of(context)?.settings.arguments as int;
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 550,
              width: 850,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Question 2',
                          style: TextStyle(
                            fontSize: 45,
                            color: AppColors.accent,
                          ),
                        ),
                        Text(
                          'Which of the following animals are marsupials?',
                          style: TextStyle(
                            fontSize: 27,
                            color: AppColors.secondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 80),
                            decoration: const BoxDecoration(
                              color: AppColors.correct,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            child: Row(
                              children: [
                                Transform.scale(
                                  scale: 2.0,
                                  child: Checkbox(
                                    activeColor: AppColors.secondary,
                                    focusColor: AppColors.secondary,
                                    value: answer1,
                                    onChanged: (value) {},
                                  ),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                const Text(
                                  'Kangaroo',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: AppColors.secondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 80),
                            decoration: const BoxDecoration(
                              color: AppColors.wrong,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            child: Row(
                              children: [
                                Transform.scale(
                                  scale: 2.0,
                                  child: Checkbox(
                                    activeColor: AppColors.secondary,
                                    focusColor: AppColors.secondary,
                                    value: answer2,
                                    onChanged: (value) {},
                                  ),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                const Text(
                                  'Platypus',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: AppColors.secondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 80),
                            decoration: const BoxDecoration(
                              color: AppColors.correct,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            child: Row(
                              children: [
                                Transform.scale(
                                  scale: 2.0,
                                  child: Checkbox(
                                    activeColor: AppColors.secondary,
                                    focusColor: AppColors.secondary,
                                    value: answer3,
                                    onChanged: (value) {},
                                  ),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                const Text(
                                  'Koala',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: AppColors.secondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        AppColors.button),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Answer1(),
                                        settings:
                                            RouteSettings(arguments: grade),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Back',
                                    style: TextStyle(
                                      color: AppColors.textWhite,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 400,
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        AppColors.button),
                                  ),
                                  onPressed: () {
                                    exit(0);
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (context) => const Score(),
                                    //   ),
                                    // );
                                  },
                                  child: const Text(
                                    'Finish',
                                    style: TextStyle(
                                      color: AppColors.textWhite,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          // Positioned(
          //   bottom: 10,
          //   right: 10,
          //   child: ElevatedButton(
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => const Score(),
          //         ),
          //       );
          //     },
          //     child: const Text('Finish'),
          //   ),
          // ),
          // Positioned(
          //   bottom: 10,
          //   left: 10,
          //   child: ElevatedButton(
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => const Answer1(),
          //           settings: RouteSettings(arguments: grade),
          //         ),
          //       );
          //     },
          //     child: const Text('Back'),
          //   ),
          // ),
        ],
      ),
    );
  }
}
