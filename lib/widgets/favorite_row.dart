import 'package:flutter/material.dart';
import 'package:fl_mockup/widgets/widgets.dart';

class FavoriteRow extends StatelessWidget {
  const FavoriteRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          _FavoritesText(),
          PlusInk(),
        ]);
  }
}

class _FavoritesText extends StatelessWidget {
  const _FavoritesText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20),
        child: const Text(
          'Favorites',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 35,
              fontFamily: 'Zelda',
              letterSpacing: -.5),
        ));
  }
}
