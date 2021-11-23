import 'package:flutter/material.dart';

class GridPosts extends StatelessWidget {
  const GridPosts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: true,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      crossAxisCount: 3,
      crossAxisSpacing: 3,
      mainAxisSpacing: 3,
      childAspectRatio: (1 / 1),
      children: <Widget>[
        Image.asset("assets/pics/DS3-1sq.jpg"),
        Image.asset("assets/pics/DS3-2sq.png"),
        Image.asset("assets/pics/DS3-1sq.jpg"),
        Image.asset("assets/pics/DS3-2sq.png"),
        Image.asset("assets/pics/DS3-1sq.jpg"),
        Image.asset("assets/pics/DS3-2sq.png"),
        Image.asset("assets/pics/DS3-1sq.jpg"),
        Image.asset("assets/pics/DS3-2sq.png"),
        Image.asset("assets/pics/DS3-1sq.jpg"),
        Image.asset("assets/pics/DS3-2sq.png"),
        Image.asset("assets/pics/DS3-1sq.jpg"),
        Image.asset("assets/pics/DS3-2sq.png"),
        Image.asset("assets/pics/DS3-1sq.jpg"),
        Image.asset("assets/pics/DS3-2sq.png"),
        Image.asset("assets/pics/DS3-1sq.jpg"),
        Image.asset("assets/pics/DS3-2sq.png"),
        Image.asset("assets/pics/DS3-1sq.jpg"),
        Image.asset("assets/pics/DS3-2sq.png"),
        Image.asset("assets/pics/DS3-1sq.jpg"),
        Image.asset("assets/pics/DS3-2sq.png"),
        Image.asset("assets/pics/DS3-1sq.jpg"),
        Image.asset("assets/pics/DS3-2sq.png"),
        Image.asset("assets/pics/DS3-1sq.jpg"),
        Image.asset("assets/pics/DS3-2sq.png"),
      ],
    );
  }
}
