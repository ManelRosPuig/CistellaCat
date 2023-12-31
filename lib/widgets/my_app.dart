import 'package:cistella_cat/widgets/general_scaffold.dart';
import 'package:cistella_cat/widgets/login.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:cistella_cat/provider/general_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GeneralProvider>(context);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cistella Cat',
      home: Login(),
      // FutureBuilder(
      // future: GeneralProvider.automaticLogin(context),
      // builder:
      // (context, snapshot) {
      // if (snapshot.connectionState == ConnectionState.waiting) {
      //   return const CircularProgressIndicator();
      // } else {
      //   if (snapshot.data != null) {
      //     return snapshot.data!;
      //   }
      //   return const Login();
      // }
      // },
    );
  }
}
