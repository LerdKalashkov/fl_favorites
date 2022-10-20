import 'package:flutter/material.dart';
import 'package:fl_mockup/models/models.dart';



class TextCard extends StatelessWidget {
  const TextCard({
    Key? key,
    required this.gif,
  }) : super(key: key);

  final Gif gif;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 45,
      bottom: 63,
      child: SizedBox(
        width: 140,
        child: Text(
          gif.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              fontSize: 20, fontFamily: 'Zelda', letterSpacing: -1.2),
        ),
      ),
    );
  }
}