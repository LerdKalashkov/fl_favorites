import 'package:flutter/material.dart';
import 'package:fl_mockup/widgets/appbar_buttoms.dart';

class AlertInk extends StatelessWidget {
  const AlertInk({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10), child: const _AlertInk());
  }
}

class _AlertInk extends StatelessWidget {
  const _AlertInk({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtomAppBar(
      marginIcon: 5,
      padding: 17,
      sizeIcon: 19,
      blur: 2,
      spread: 0.01,
      icon: Container(
          height: 15,
          margin: const EdgeInsets.all(7),
          child: Image.asset(
            'assets/icons/alert.png',
            color: Colors.black54,
          )),
    );
  }
}
