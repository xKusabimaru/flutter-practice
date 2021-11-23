import 'package:dev_gram/views/sign_up_view.dart';
import 'package:dev_gram/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'views/home_view.dart';
import 'views/main_view.dart';
import 'views/sign_in_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Container();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            home: Wrapper(),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Container();
      },
    );
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   home: SignUpView(),
    // );
  }
}
