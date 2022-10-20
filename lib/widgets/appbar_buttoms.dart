import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtomAppBar extends StatelessWidget {
  ButtomAppBar(
      {super.key,
      required this.marginIcon,
      required this.sizeIcon,
      required this.padding,
      required this.icon,
      this.blur,
      this.spread});

  double marginIcon;
  double sizeIcon;
  double padding;
  double? spread = 0.1;
  double? blur = 8;
  Container icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(35)),
        onTap: () {},
        child: Ink(
          decoration: _appBarDecoration(),
          child: Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(45), child: icon)),
        ),
      ),
    );
  }

  BoxDecoration _appBarDecoration() {
    return BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(35)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              spreadRadius: spread!,
              blurRadius: blur!,
              offset: const Offset(.1, 0.9))
        ]);
  }
}
