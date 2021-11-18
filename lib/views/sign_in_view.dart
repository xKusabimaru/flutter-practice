import 'package:dev_gram/constents.dart';
import 'package:dev_gram/views/main_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SighInView extends StatefulWidget {
  SighInView({Key? key}) : super(key: key);

  @override
  State<SighInView> createState() => _SighInViewState();
}

class _SighInViewState extends State<SighInView> {
  String username = "";

  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              username = value;
            },
            decoration: InputDecoration(
              hintText: "username",
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
            ),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Text(
                "forget password?",
                style: TextStyle(
                  color: Color(0xff5ACBFE),
                  fontWeight: FontWeight.w700,
                ),
              )),
          MaterialButton(
            onPressed: () {
              if (username == "kusabimaru" && password == "ezPass") {
                print("Login successed");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainView(),
                    ));
              } else {
                print("Login failed");
              }
            },
            color: Color(0xff5ACBFE),
            child: Text("Login"),
          )
        ],
      ),
    ));
  }
}
