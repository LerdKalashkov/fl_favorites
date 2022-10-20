import 'package:flutter/material.dart';
import '../providers/providers.dart';

class ScrollSelected extends StatelessWidget {
  const ScrollSelected({
    Key? key,
    required this.orange,
    required this.choice,
    required this.listOfTypes,
  }) : super(key: key);

  final Color orange;
  final ButtonChoiceProvider choice;
  final List<String> listOfTypes;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.only(left: 10),
        margin: const EdgeInsets.only(top: 15),
        height: 45,
        width: double.infinity,
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) => Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 4),
            child: InkWell(
              splashColor: orange,
              highlightColor: orange,
              borderRadius: const BorderRadius.all(Radius.circular(11)),
              onTap: () {
                choice.currentChoice = index;
              },
              child: Ink(
                decoration: _scrollSelectedDecoration(index),
                child: Center(child: _text(index)),
              ),
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration _scrollSelectedDecoration(int index) {
    return BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(11)),
        color: index == choice.currentChoice ? orange : Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Colors.black12,
              spreadRadius: .01,
              blurRadius: 2,
              offset: Offset(.1, 0.9))
        ]);
  }

  Container _text(int index) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: index == choice.currentChoice
            ? Text(listOfTypes[index],
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'ZeldaBold'))
            : Text(listOfTypes[index],
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'ZeldaBold',
                    color: Colors.black)));
  }
}
