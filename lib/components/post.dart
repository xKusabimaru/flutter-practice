import 'package:dev_gram/constents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class post extends StatelessWidget {
  const post({
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
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Image.asset(
                'assets/pics/pic2.jpg',
                width: 50,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text("Kusa", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("khobar"),
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
              "assets/pics/pic3.jpg",
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
            Text("liked by"),
            SizedBox(
              width: 5,
            ),
            const Text("Khalid", style: TextStyle(fontWeight: FontWeight.bold)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Text("and"),
            ),
            Text("20 others")
          ],
        ),
      ],
    );
  }
}
