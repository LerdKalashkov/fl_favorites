import 'package:fl_mockup/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PlusInk extends StatelessWidget {
  const PlusInk({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 15),
        child: ButtomAppBar(
          marginIcon: 10,
          padding: 19,
          sizeIcon: 22,
          blur: 4,
          spread: 1,
          icon: Container(
              height: 15,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              child: const Icon(
                Icons.add,
                size: 20,
              )),
        ));
  }
}
