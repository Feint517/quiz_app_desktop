import 'package:flutter/material.dart';
import 'package:quiz_app_desktop/screens/answer2_screen.dart';
import 'package:quiz_app_desktop/screens/score_screen.dart';
import 'package:quiz_app_desktop/utils/colors.dart';

class Answer1 extends StatelessWidget {
  const Answer1({super.key});

  final int? selectedOption = 0;

  @override
  //? Answer1 is the right answer
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
                //crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          Container(
                            margin: const EdgeInsets.only(right: 80),
                            decoration: const BoxDecoration(
                              color: AppColors.correct,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              ),
                            ),
                            child: Row(
                              children: [
                                Transform.scale(
                                  scale: 2.0,
                                  child: Radio(
                                    activeColor: AppColors.accent,
                                    focusColor: AppColors.secondary,
                                    value: 50,
                                    groupValue: selectedOption,
                                    onChanged: (value) {},
                                  ),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                const Text(
                                  'F. Scott Fitzgerald ',
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
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              ),
                            ),
                            child: Row(
                              children: [
                                Transform.scale(
                                  scale: 2.0,
                                  child: Radio(
                                    activeColor: AppColors.accent,
                                    focusColor: AppColors.secondary,
                                    value: 2,
                                    groupValue: selectedOption,
                                    onChanged: (value) {},
                                  ),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                const Text(
                                  'Ernest Hemingway',
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
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              ),
                            ),
                            child: Row(
                              children: [
                                Transform.scale(
                                  scale: 2.0,
                                  child: Radio(
                                    activeColor: AppColors.accent,
                                    focusColor: AppColors.secondary,
                                    value: 3,
                                    groupValue: selectedOption,
                                    onChanged: (value) {},
                                  ),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                const Text(
                                  'William Faulkner',
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
                                        builder: (context) => const Score(),
                                        settings:
                                            RouteSettings(arguments: grade),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'back',
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
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Answer2(),
                                        settings:
                                            RouteSettings(arguments: grade),
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
          //           builder: (context) => const Answer2(),
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
          //           builder: (context) => const Score(),
          //           settings: RouteSettings(arguments: grade),
          //         ),
          //       );
          //     },
          //     child: const Text('back'),
          //   ),
          // ),
        ],
      ),
    );
  }
}
