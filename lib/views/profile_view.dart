import 'package:dev_gram/components/grid_posts.dart';
import 'package:dev_gram/constents.dart';
import 'package:dev_gram/services/auth.dart';
import 'package:dev_gram/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(child: Text("Options")),
            ListTile(
                title: Text("sign out"),
                onTap: () async {
                  await AuthService.signOut();
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Wrapper(),
                      ));
                }),
            ListTile(
                title: Text("back"),
                onTap: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
      appBar: AppBar(
        leading: Builder(
            builder: (context) => IconButton(
                  icon: new Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                )),
        title: Text(
          "Kusabimaru",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          SvgPicture.asset(kAdd),
          SizedBox(
            width: 10,
          ),
          SvgPicture.asset(kMore),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                  height: 85,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(37.5),
                  child: Image.asset(
                    'assets/pics/avatar.jpg',
                    width: 75,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                RichText(
                    text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                      TextSpan(
                          text: "  24",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: "\nPosts",
                      )
                    ])),
                SizedBox(
                  width: 20,
                ),
                RichText(
                    text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                      TextSpan(
                          text: "      86",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: "\nFollowers",
                      )
                    ])),
                SizedBox(
                  width: 20,
                ),
                RichText(
                    text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                      TextSpan(
                          text: "     115",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: "\nFollowing",
                      )
                    ])),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Text("Khalid\nComputer science student in KFUPM")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            GridPosts()
          ],
        ),
      ),
    );
  }
}
