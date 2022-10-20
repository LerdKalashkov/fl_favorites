import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:giphy_picker/giphy_picker.dart';
import 'package:like_button/like_button.dart';

import 'package:provider/provider.dart';
import 'package:fl_mockup/providers/providers.dart';

import 'package:fl_mockup/models/gif_model.dart';
import 'package:fl_mockup/widgets/widgets.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  Color orange = const Color.fromRGBO(238, 127, 61, 1);

  @override
  Widget build(BuildContext context) {
    final gifs = Provider.of<GifsServices>(context);
    final current = Provider.of<ButtonAppBarProvider>(context);
    final choice = Provider.of<ButtonChoiceProvider>(context);

    double displayWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
            physics: const NeverScrollableScrollPhysics(),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            slivers: <Widget>[
              SliverAppBar.large(
                expandedHeight: 155,
                pinned: false,
                backgroundColor: Colors.white,
                flexibleSpace: Column(children: const [
                  Nasa(),
                  FavoriteRow(),
                ]),
                actions: const [
                  AlertInk(),
                  SettingsInk(),
                ],
              ),
              ScrollSelected(
                  orange: orange, choice: choice, listOfTypes: listOfTypes),
              const SliverToBoxAdapter(
                child: HappyContainer(),
              ),
              SliverToBoxAdapter(
                child: FutureBuilder(
                  future: gifs.loadGifs(),
                  builder:
                      (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Container();
                    } else {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: displayWidth * 1,
                        child: NotificationListener<
                                OverscrollIndicatorNotification>(
                            onNotification: (overScroll) {
                              overScroll.disallowIndicator();
                              return true;
                            },
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: gifs.gifs.length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context, int index) {
                                final gif = gifs.gifs[index];
                                log(gif.toString());
                                return _Card(gif: gif, orange: orange);
                              },
                            )),
                      );
                    }
                  },
                ),
              )
            ]),
        bottomNavigationBar: BottomNavigatorBar(
            displayWidth: displayWidth,
            current: current,
            listOfStrings: listOfStrings,
            iconsList: iconsList));
  }

  List<String> iconsList = [
    'assets/icons/home.png',
    'assets/icons/calendar.png',
    'assets/icons/search.png',
    'assets/icons/favorite.png',
  ];

  List<String> listOfStrings = [
    'Home',
    'Calendar',
    'Search',
    'Favoritos',
  ];

  List<String> listOfTypes = [
    '  All  ',
    'Happy Hours',
    'Drinks',
    'Beer',
    'Disco Dance'
  ];
}

class _Card extends StatelessWidget {
  const _Card({
    Key? key,
    required this.gif,
    required this.orange,
  }) : super(key: key);

  final Gif gif;
  final Color orange;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 135,
      margin: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              spreadRadius: 0.01,
              blurRadius: 1,
              offset: Offset(0, 2))
        ],
        color: Colors.white,
      ),
      child: Stack(children: [
        Images(gif: gif),
        ImageContainer(orange: orange),
        TextCard(gif: gif),
        const PointsButton()
      ]),
    );
  }
}

BoxShadow _fullCardDecoration() {
  return const BoxShadow(
      color: Colors.black12,
      spreadRadius: 0.01,
      blurRadius: 1,
      offset: Offset(0, 2));
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
