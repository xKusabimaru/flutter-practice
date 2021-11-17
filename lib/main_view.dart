import 'package:dev_gram/constents.dart';
import 'package:dev_gram/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset(kHome), label: 'Home'),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/pics/pic2.jpg',
              width: 40,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: IndexedStack(
        index: currentIndex,
        children: [
          HomeView(),
          Container(),
        ],
      ),
    );
  }
}
