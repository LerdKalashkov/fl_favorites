import 'package:flutter/material.dart';
import 'package:fl_mockup/widgets/widgets.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key? key,
    required this.orange,
  }) : super(key: key);

  final Color orange;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 63,
        top: 80,
        child: Stack(alignment: Alignment.center, children: [
          Container(
            decoration: _imageContainerDecoration(),
            width: 30,
            height: 30,
          ),
          LikedButton(orange: orange),
        ]));
  }

  BoxDecoration _imageContainerDecoration() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(0, 3))
        ]);
  }
}