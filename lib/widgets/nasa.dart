import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:fl_mockup/styles/svg_styles.dart';

class Nasa extends StatelessWidget {
  const Nasa({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 43, right: 265),
      child: SvgPicture.asset(
        nasa,
        width: 71,
      ),
    );
  }
}
