import 'package:flutter/material.dart';
import 'package:quiz_app_desktop/screens/start_screen.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  WindowOptions windowOptions = const WindowOptions(
    minimumSize: Size(1200, 700),
    size: Size(1200, 700),
    center: true,
    title: 'Quiz',
  );

  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
  // if (Platform.isWindows) {
  //   WindowManager.instance.setMinimumSize(const Size(1200, 700));
  //   WindowManager.instance.setMaximumSize(const Size(1200, 700));
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Cocogoose',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Start(),
    );
  }
}
