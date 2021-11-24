import 'package:dev_gram/components/post2_viewer.dart';
import 'package:dev_gram/views/add_post_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../components/post1_viewer.dart';
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
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddPostView(),
                  )),
              child: SvgPicture.asset(kAdd),
            ),
            //SvgPicture.asset(kAdd),
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
            post1(),
            post2(),
            post1(),
            post2(),
          ],
        )));
  }
}
