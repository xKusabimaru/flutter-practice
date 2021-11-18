import 'package:flutter/material.dart';
import 'views/home_view.dart';
import 'views/main_view.dart';
import 'views/sign_in_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SighInView(),
    );
  }
}
