import 'package:flutter/material.dart';
import 'package:quiz_app_desktop/screens/question1_screen.dart';
import 'package:quiz_app_desktop/screens/score_screen.dart';
import 'package:quiz_app_desktop/utils/colors.dart';

class Question2 extends StatefulWidget {
  const Question2({super.key});

  @override
  State<Question2> createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  late int? grade = ModalRoute.of(context)?.settings.arguments as int;
  bool? answer1 = false;
  bool? answer2 = false;
  bool? answer3 = false;

  @override
  Widget build(BuildContext context) {
    print('grade at build screen3: $grade');

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
                          Row(
                            children: [
                              Transform.scale(
                                scale: 2.0,
                                child: Checkbox(
                                  activeColor: AppColors.secondary,
                                  focusColor: AppColors.secondary,
                                  value: answer1,
                                  onChanged: (value) {
                                    setState(() {
                                      answer1 = value!;
                                      if (answer1 == true) {
                                        grade = grade! + 25;
                                      } else {
                                        grade = grade! - 25;
                                      }
                                      print('grade at selection $grade');
                                      print("Button value: $value");
                                    });
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Container(
                                width: 600,
                                padding: const EdgeInsets.only(left: 20),
                                decoration: const BoxDecoration(
                                  color: AppColors.secondary,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                  ),
                                ),
                                child: const Text(
                                  'Kangaroo',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: AppColors.textBlack,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Transform.scale(
                                scale: 2.0,
                                child: Checkbox(
                                  activeColor: AppColors.secondary,
                                  focusColor: AppColors.secondary,
                                  value: answer2,
                                  onChanged: (value) {
                                    setState(() {
                                      answer2 = value!;
                                      if (answer2 == true) {
                                        grade = grade! + 0;
                                      }
                                      print('grade at selection $grade');
                                      print("Button value: $value");
                                    });
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Container(
                                width: 600,
                                padding: const EdgeInsets.only(left: 20),
                                decoration: const BoxDecoration(
                                  color: AppColors.secondary,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                  ),
                                ),
                                child: const Text(
                                  'Platypus',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: AppColors.textBlack,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Transform.scale(
                                scale: 2.0,
                                child: Checkbox(
                                  activeColor: AppColors.secondary,
                                  focusColor: AppColors.secondary,
                                  value: answer3,
                                  onChanged: (value) {
                                    setState(() {
                                      answer3 = value!;
                                      if (answer3 == true) {
                                        grade = grade! + 25;
                                      } else {
                                        grade = grade! - 25;
                                      }
                                      print('grade at selection $grade');
                                      print("Button value: $value");
                                    });
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Container(
                                width: 600,
                                padding: const EdgeInsets.only(left: 20),
                                decoration: const BoxDecoration(
                                  color: AppColors.secondary,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                  ),
                                ),
                                child: const Text(
                                  'Koala',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: AppColors.textBlack,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
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
                                      builder: (context) => const Question(),
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
                                  print('grade at next = $grade');
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Score(),
                                      settings: RouteSettings(arguments: grade),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Next',
                                  style: TextStyle(
                                    color: AppColors.textWhite,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
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
          //       print('grade = $grade');
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => const Score(),
          //           settings: RouteSettings(arguments: grade),
          //         ),
          //       );
          //     },
          //     child: const Text('Next'),
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
          //           builder: (context) => const Question(),
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
