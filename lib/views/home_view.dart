import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../components/post.dart';
import '../constents.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: SvgPicture.asset(kLogo),
          backgroundColor: Colors.white,
          actions: [
            SvgPicture.asset(kAdd),
            //Icon(Icons.add, color: Colors.black),
            SizedBox(
              width: 10,
            ),
            SvgPicture.asset(kHeart),
            // Icon(Icons.headset_rounded, color: Colors.black),
            SizedBox(
              width: 10,
            ),
            SvgPicture.asset(kMessenger),
            // Icon(Icons.chat, color: Colors.black),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            post(),
            post(),
            post(),
          ],
        )));
  }
}
