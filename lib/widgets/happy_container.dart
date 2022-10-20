import 'package:flutter/material.dart';
import 'package:fl_mockup/widgets/widgets.dart';

class HappyContainer extends StatelessWidget {
  const HappyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [_HappyText(), TrashInk()]),
    );
  }
}

class _HappyText extends StatelessWidget {
  const _HappyText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 16),
        child: const Text(
          'Happy Hours',
          style:
              TextStyle(fontSize: 22, fontFamily: 'Zelda', letterSpacing: -1.2),
        ));
  }
}
