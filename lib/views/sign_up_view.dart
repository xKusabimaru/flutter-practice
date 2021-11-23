import 'package:dev_gram/constents.dart';
import 'package:dev_gram/services/auth.dart';
import 'package:dev_gram/views/sign_in_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../wrapper.dart';

class SignUpView extends StatefulWidget {
  SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  String email = "";

  String password = "";

  String re_password = "";

  bool _passwordVisible = false;

  bool _obscureText = true;

  bool isValidRe_password = false;

  bool isValidEmail = false;

  bool isValidPassword = false;

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
              setState(() {
                email = value;
              });
            },
            decoration: InputDecoration(
              hintText: "email",
              errorText: isValidEmail ? "enter a valid email" : null,
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
              setState(() {
                password = value;
              });
            },
            decoration: InputDecoration(
                hintText: "password",
                errorText: isValidPassword
                    ? "enter a password with more than 6 characters"
                    : null,
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
            height: 10,
          ),
          TextField(
            obscureText: _obscureText,
            enableSuggestions: false,
            autocorrect: false,
            onChanged: (value) {
              setState(() {
                re_password = value;
              });
            },
            decoration: InputDecoration(
                hintText: "re-enter password",
                errorText: isValidRe_password ? "not the same password!" : null,
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
          MaterialButton(
            onPressed: () async {
              if (password != re_password) {
                isValidRe_password = true;
              }
              if (password.length < 6) {
                isValidPassword = true;
              }
              if (email == "") {
                isValidEmail = true;
              }
              if (password == re_password && password.length >= 6) {
                isValidEmail = false;
                isValidPassword = false;
                isValidRe_password = false;
                await AuthService.reg(email, password);
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Wrapper(),
                    ));
              }
            },
            color: Color(0xff5ACBFE),
            child: Text("Sign up"),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInView(),
                  ));
            },
            //color: Colors.white,
            child: Text("Back to sign in page"),
          ),
        ],
      ),
    )));
  }
}
