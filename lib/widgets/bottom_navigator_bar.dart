import 'package:flutter/material.dart';

import '../providers/providers.dart';

class BottomNavigatorBar extends StatelessWidget {
  const BottomNavigatorBar({
    Key? key,
    required this.displayWidth,
    required this.current,
    required this.listOfStrings,
    required this.iconsList,
  }) : super(key: key);

  final double displayWidth;
  final ButtonAppBarProvider current;
  final List<String> listOfStrings;
  final List<String> iconsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: displayWidth * .05),
      height: displayWidth * .165,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            blurRadius: 30,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            current.currentIndex = index;
          },
          child: Stack(
            children: [
              _animationIcon(index),
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.fastLinearToSlowEaseIn,
                width: index == current.currentIndex
                    ? displayWidth * .31
                    : displayWidth * .18,
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        _animationText(index),
                        AnimatedOpacity(
                          opacity: index == current.currentIndex ? 1 : 0,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          child: Text(
                            index == current.currentIndex
                                // ignore: unnecessary_string_interpolations
                                ? '${listOfStrings[index]}'
                                : '',
                            style: const TextStyle(
                              fontFamily: 'ZeldaLight',
                              fontWeight: FontWeight.w800,
                              color: Colors.black87,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        _animationsIcons(index),
                        Container(
                            height: 20,
                            margin: const EdgeInsets.all(7),
                            child: Image.asset(
                              iconsList[index],
                              color: Colors.black54,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer _animationsIcons(int index) {
    return AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastLinearToSlowEaseIn,
                        width: index == current.currentIndex
                            ? displayWidth * .03
                            : 20,
                      );
  }

  AnimatedContainer _animationText(int index) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.fastLinearToSlowEaseIn,
      width: index == current.currentIndex ? displayWidth * .13 : 0,
    );
  }

  AnimatedContainer _animationIcon(int index) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.fastLinearToSlowEaseIn,
      width: index == current.currentIndex
          ? displayWidth * .32
          : displayWidth * .18,
      alignment: Alignment.center,
    );
  }
}
