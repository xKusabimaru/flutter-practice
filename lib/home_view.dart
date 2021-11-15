import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instagram",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          Icon(Icons.add, color: Colors.black),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.headset_rounded, color: Colors.black),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.chat, color: Colors.black),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/pic2.jpg',
                width: 80,
              ),
              SizedBox(
                width: 10,
              ),
              Text("Kusa", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("khobar"),
              Spacer(),
              Icon(Icons.more_horiz),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                "assets/pic1.jpg",
                width: 360,
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(Icons.ac_unit),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.chat),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.share),
              Spacer(),
              Icon(Icons.access_alarm_outlined),
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
                width: 10,
              ),
              const Text("Khalid",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                width: 10,
              ),
              Text("and"),
              SizedBox(
                width: 10,
              ),
              Text("20 others")
            ],
          ),
        ],
      ),
    );
  }
}
