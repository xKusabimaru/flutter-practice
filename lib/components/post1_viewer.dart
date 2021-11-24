import 'package:dev_gram/constents.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class post1 extends StatelessWidget {
  const post1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 10,
              height: 60,
            ),
            //Padding(
            //padding: EdgeInsets.symmetric(vertical: 5),
            ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Image.asset(
                'assets/pics/avatar.jpg',
                width: 50,
              ),
            ),

            //),
            SizedBox(
              width: 10,
            ),
            //Text("Kusabimaru", style: TextStyle(fontWeight: FontWeight.bold)),
            RichText(
                text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: const <TextSpan>[
                  TextSpan(
                      text: "Kusabimaru",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: "\nDammam - KFUPM",
                  )
                ])),
            Spacer(),
            SvgPicture.asset(kMore),
            // Icon(Icons.more_horiz),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        Row(
          children: [
            Image.asset(
              "assets/pics/DS3-1.jpg",
              width: 360,
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: SvgPicture.asset(kHeart),
              //child: Icon(Icons.ac_unit),
            ),
            SizedBox(
              width: 10,
            ),
            SvgPicture.asset(kComment),
            //Icon(Icons.chat),
            SizedBox(
              width: 10,
            ),
            SvgPicture.asset(kShare),
            // Icon(Icons.share),
            Spacer(),
            SvgPicture.asset(kBookmark),
            //Icon(Icons.access_alarm_outlined),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            RichText(
                text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: const <TextSpan>[
                  TextSpan(text: "liked by "),
                  TextSpan(
                      text: "kusa ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "and 20 others"),
                ])),

            // SizedBox(
            //   width: 10,
            // ),
            // Text("liked by"),
            // SizedBox(
            //   width: 5,
            // ),
            // const Text("Khalid", style: TextStyle(fontWeight: FontWeight.bold)),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            //   child: Text("and"),
            // ),
            // Text("20 others")
          ],
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
