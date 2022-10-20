import 'package:fl_mockup/widgets/appbar_buttoms.dart';
import 'package:flutter/material.dart';


class TrashInk extends StatelessWidget {
  const TrashInk({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: ButtomAppBar(
        marginIcon: 5,
        padding: 17,
        sizeIcon: 19,
        blur: 2,
        spread: 0.01,
        icon: Container(
            height: 12,
            margin: const EdgeInsets.all(7),
            child: Image.asset(
              'assets/icons/trash.png',
              color: Colors.black87,
            )),
      ),
    );
  }
}