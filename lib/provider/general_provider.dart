import 'package:cistella_cat/widgets/home.dart';
import 'package:flutter/material.dart';

class GeneralProvider extends ChangeNotifier {
  int _index = 1;
  Widget _body = const Home();

  int get index => _index;
  Widget get body => _body;

  void navigateToShopping() {
    _index = 0;
    _body = Container();
    notifyListeners();
  }

  void navigateToHome() {
    _index = 1;
    _body = const Home();
    notifyListeners();
  }

  void navigateToPeople() {
    _index = 2;
    _body = Container();
    notifyListeners();
  }
}
