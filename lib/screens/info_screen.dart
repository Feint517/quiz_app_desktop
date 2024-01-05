import 'package:flutter/material.dart';
import 'package:quiz_app_desktop/screens/begin_screen.dart';
import 'package:quiz_app_desktop/screens/start_screen.dart';
import 'package:quiz_app_desktop/utils/colors.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();

  // @override
  // void dispose() {
  //   firstName.dispose();
  //   lastName.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'We have to get to know you first!',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 40.0,
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 60,
                  child: TextField(
                    controller: firstName,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(
                              width: 3,
                              color: AppColors.accent,
                            )),
                        prefixIcon: const Icon(Icons.person),
                        label: const Text(
                          'First Name',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)))),
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 60,
                  child: TextField(
                    controller: lastName,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(
                              width: 3,
                              color: AppColors.accent,
                            )),
                        prefixIcon: const Icon(Icons.person),
                        label: const Text(
                          'Last Name',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)))),
                  ),
                ),
                // SizedBox(
                //   width: 500,
                //   height: 60,
                //   child: TextField(
                //     controller: email,
                //     decoration: InputDecoration(
                //         enabledBorder: OutlineInputBorder(
                //             borderRadius: BorderRadius.circular(20.0),
                //             borderSide: const BorderSide(
                //               width: 3,
                //               color: AppColors.accent,
                //             )),
                //         prefixIcon: const Icon(Icons.mail),
                //         label: const Text(
                //           'Email',
                //           style: TextStyle(
                //             fontSize: 30.0,
                //           ),
                //         ),
                //         border: const OutlineInputBorder(
                //             borderRadius:
                //                 BorderRadius.all(Radius.circular(12.0)))),
                //   ),
                // ),
                // SizedBox(
                //   width: 500,
                //   height: 60,
                //   child: TextField(
                //     controller: id,
                //     decoration: InputDecoration(
                //         enabledBorder: OutlineInputBorder(
                //             borderRadius: BorderRadius.circular(20.0),
                //             borderSide: const BorderSide(
                //               width: 3,
                //               color: AppColors.accent,
                //             )),
                //         prefixIcon: const Icon(Icons.numbers),
                //         label: const Text(
                //           'ID',
                //           style: TextStyle(
                //             fontSize: 30.0,
                //           ),
                //         ),
                //         border: const OutlineInputBorder(
                //             borderRadius:
                //                 BorderRadius.all(Radius.circular(12.0)))),
                //   ),
                // ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Begin(
                        firstName: firstName.text,
                        lastName: lastName.text,
                      ),
                    ),
                  );
                },
                child: const Text('Next')),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Start()));
                },
                child: const Text('Back')),
          ),
        ],
      ),
    );
  }
}
