import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/home_controller.dart';
import 'package:flutter_application_1/widget/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeController(
          child: HomePage()
      )
    );
  }
}
