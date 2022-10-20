import 'package:flutter/material.dart';
import 'package:fl_mockup/widgets/appbar_buttoms.dart';

class SettingsInk extends StatelessWidget {
  const SettingsInk({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 15), child: const _SettingsInk());
  }
}

class _SettingsInk extends StatelessWidget {
  const _SettingsInk({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtomAppBar(
      icon: Container(
          height: 15,
          margin: const EdgeInsets.all(7),
          child: Image.asset(
            'assets/icons/settings.png',
            color: Colors.black54,
          )),
      marginIcon: 5,
      padding: 17,
      sizeIcon: 19,
      blur: 2,
      spread: 0.01,
    );
  }
}
