import 'package:dev_gram/constents.dart';
import 'package:dev_gram/services/auth.dart';
import 'package:dev_gram/views/main_view.dart';
import 'package:dev_gram/views/sign_up_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../wrapper.dart';

class SignInView extends StatefulWidget {
  SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  String email = "";

  String password = "";

  bool _passwordVisible = false;

  bool _obscureText = true;

  bool isSignIn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            kLogo,
            width: 209,
            height: 60,
          ),
          SizedBox(height: 40),
          TextField(
            onChanged: (value) {
              email = value;
            },
            decoration: InputDecoration(
              hintText: "email",
              fillColor: Color(0xffFAFAFA),
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xffC4C4C4), width: 1)),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xffC4C4C4), width: 1)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: _obscureText,
            enableSuggestions: false,
            autocorrect: false,
            onChanged: (value) {
              password = value;
            },
            decoration: InputDecoration(
                hintText: "password",
                fillColor: Color(0xffFAFAFA),
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffC4C4C4), width: 1)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffC4C4C4), width: 1)),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                      _obscureText = !_obscureText;
                    });
                  },
                  icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                )),
          ),
          SizedBox(
            height: 5,
          ),
          Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  //
                },
                child: Text(
                  "forget password?",
                  style: TextStyle(
                    color: Color(0xff5ACBFE),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )),
          MaterialButton(
            onPressed: () async {
              await AuthService.signIn(email, password);
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Wrapper(),
                  ));
            },
            color: Color(0xff5ACBFE),
            child: Text("Login"),
          ),
          SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpView(),
                  ));
            },
            //color: Colors.white,
            child: Text("Don't have an account?"),
          ),
        ],
      ),
    )));
  }
}
