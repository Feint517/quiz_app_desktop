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
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final email = TextEditingController();
  final id = TextEditingController();

  bool _validateFirstName = false;
  bool _validateLastName = false;
  bool _validateEmail = false;
  bool _validateID = false;

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
                  height: 85,
                  child: TextField(
                    controller: firstName,
                    decoration: InputDecoration(
                      errorText:
                          _validateFirstName ? 'Name Cant Be Empty' : null,
                      errorStyle: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.red,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.red,
                        ),
                      ),
                      iconColor: AppColors.primary,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                          width: 3,
                          color: AppColors.accent,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.person),
                      label: const Text(
                        'First Name',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: AppColors.primary,
                        ),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 85,
                  child: TextField(
                    controller: lastName,
                    decoration: InputDecoration(
                      errorText:
                          _validateLastName ? 'Name Cant Be Empty' : null,
                      errorStyle: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.red,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.red,
                        ),
                      ),
                      iconColor: AppColors.primary,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                          width: 3,
                          color: AppColors.accent,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.person),
                      label: const Text(
                        'Last Name',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: AppColors.primary,
                        ),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 85,
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                      errorText: _validateEmail ? 'Email Cant Be Empty' : null,
                      errorStyle: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.red,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.red,
                        ),
                      ),
                      iconColor: AppColors.primary,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                          width: 3,
                          color: AppColors.accent,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.mail),
                      label: const Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: AppColors.primary,
                        ),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 85,
                  child: TextField(
                    controller: id,
                    decoration: InputDecoration(
                      errorText: _validateID ? 'ID Cant Be Empty' : null,
                      errorStyle: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.red,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.red,
                        ),
                      ),
                      iconColor: AppColors.primary,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                          width: 3,
                          color: AppColors.accent,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.numbers),
                      label: const Text(
                        'ID',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: AppColors.primary,
                        ),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _validateFirstName = firstName.text.isEmpty;
                    _validateLastName = lastName.text.isEmpty;
                    _validateEmail = email.text.isEmpty;
                    _validateID = id.text.isEmpty;
                  });
                  if (!_validateFirstName &&
                      !_validateLastName &&
                      !_validateEmail &&
                      !_validateID) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Begin(
                          firstName: firstName.text,
                          lastName: lastName.text,
                        ),
                      ),
                    );
                  }
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
