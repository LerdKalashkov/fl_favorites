import 'package:flutter/material.dart';

class ButtonChoiceProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  int _currentChoice = 0;

  int get currentChoice => _currentChoice;
  set currentChoice(int value) {
    _currentChoice = value;
    notifyListeners();
  }
}
