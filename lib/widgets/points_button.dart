import 'package:flutter/material.dart';

class PointsButton extends StatelessWidget {
  const PointsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: -5,
        child: IconButton(
          highlightColor: Colors.white,
          splashColor: Colors.white,
          onPressed: () {},
          icon: Container(
              height: 15,
              margin: const EdgeInsets.all(7),
              child: Image.asset(
                'assets/icons/points.png',
                color: Colors.black54,
              )),
        ));
  }
}
