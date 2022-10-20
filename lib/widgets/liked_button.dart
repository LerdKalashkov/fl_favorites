import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';


class LikedButton extends StatelessWidget {
  const LikedButton({
    Key? key,
    required this.orange,
  }) : super(key: key);

  final Color orange;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: LikeButton(
        likeBuilder: (isLiked) {
          return Container(
            margin: const EdgeInsets.only(left: 3, top: 3),
            padding: const EdgeInsets.all(5),
            child: Image.asset(
              'assets/icons/favorite1.png',
              color: isLiked ? orange : Colors.black54,
            ),
          );
        },
      ),
    );
  }
}