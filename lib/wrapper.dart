import 'package:dev_gram/services/auth.dart';
import 'package:dev_gram/views/main_view.dart';
import 'package:dev_gram/views/sign_in_view.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  Wrapper({Key? key}) : super(key: key);

  bool isSignedIn = AuthService.getUser() != null;

  @override
  Widget build(BuildContext context) {
    if (isSignedIn) {
      return MainView();
    } else {
      return SignInView();
    }
  }
}
