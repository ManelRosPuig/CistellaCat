import 'package:cistella_cat/widgets/family.dart';
import 'package:cistella_cat/widgets/general_scaffold.dart';
import 'package:cistella_cat/widgets/home/home.dart';
import 'package:cistella_cat/widgets/login.dart';
import 'package:cistella_cat/widgets/shoppings.dart';
import 'package:flutter/material.dart';

class GeneralProvider extends ChangeNotifier {
  Widget _home = GeneralScaffold();
  Widget get home => _home;
  set home(Widget value) {
    _home = value;
    notifyListeners();
  }

  Future<void> isUserLogged() async {
    // Code
  }

  static Future<Widget> automaticLogin(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 10));
    return const Login();
  }

  int _index = 1;
  Widget _body = const Home();

  int get index => _index;
  Widget get body => _body;

  void navigateToShopping() {
    _index = 0;
    _body = const Shoppings();
    notifyListeners();
  }

  void navigateToHome() {
    _index = 1;
    _body = const Home();
    notifyListeners();
  }

  void navigateToPeople() {
    _index = 2;
    _body = const Family();
    notifyListeners();
  }
}
