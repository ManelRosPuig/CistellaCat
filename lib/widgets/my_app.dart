import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:cistella_cat/provider/general_provider.dart';

import 'package:cistella_cat/widgets/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GeneralProvider()),
      ],
      child: const MaterialApp(
        title: 'Cistella Cat',
        home: HomeScreen(),
      ),
    );
  }
}
