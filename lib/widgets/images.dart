import 'package:flutter/material.dart';
import 'package:giphy_picker/giphy_picker.dart';

import '../models/gif_model.dart';

class Images extends StatelessWidget {
  const Images({
    Key? key,
    required this.gif,
  }) : super(key: key);

  final Gif gif;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 25,
        top: 30,
        child: Container(
          decoration: _imageDecoration(),
          width: 105,
          height: 70,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: GiphyImage(
              fit: BoxFit.cover,
              url: gif.images,
            ),
          ),
        ));
  }

  BoxDecoration _imageDecoration() {
    return const BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(15)));
  }
}
