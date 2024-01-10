import 'package:flutter/material.dart';
import 'package:quiz_app_desktop/screens/question2_screen.dart';
import 'package:quiz_app_desktop/utils/colors.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  int? selectedOption = 0;
  int grade = 0;

  @override
  //? Answer1 is the right answer
  Widget build(BuildContext context) {
    print('grade at build = $grade');
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
                          'Question 1',
                          style: TextStyle(
                            fontSize: 45,
                            color: AppColors.accent,
                          ),
                        ),
                        Text(
                          'Who is the author of “The Great Gatsby”?',
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
                                child: Radio(
                                  activeColor: AppColors.accent,
                                  focusColor: AppColors.secondary,
                                  value: 50,
                                  groupValue: selectedOption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = value;
                                      grade = grade + selectedOption!;
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
                                  'F. Scott Fitzgerald ',
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
                                child: Radio(
                                  activeColor: AppColors.accent,
                                  focusColor: AppColors.secondary,
                                  value: 2,
                                  groupValue: selectedOption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = value;
                                      if (grade > 0) {
                                        grade = grade - 50;
                                      }

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
                                  'Ernest Hemingway',
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
                                child: Radio(
                                  activeColor: AppColors.accent,
                                  focusColor: AppColors.secondary,
                                  value: 3,
                                  groupValue: selectedOption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = value;
                                      if (grade > 0) {
                                        grade = grade - 50;
                                      }
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
                                  'William Faulkner',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: AppColors.textBlack,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const SizedBox(
                                width: 600,
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
                                      builder: (context) => const Question2(),
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
          //       print('grade at next = $grade');
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => const Question2(),
          //           settings: RouteSettings(arguments: grade),
          //         ),
          //       );
          //     },
          //     child: const Text('Next'),
          //   ),
          // ),
        ],
      ),
    );
  }
}
