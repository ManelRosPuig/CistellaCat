import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:cistella_cat/provider/general_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = Provider.of<GeneralProvider>(context).counter;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: const TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<GeneralProvider>(context, listen: false).increment();
              },
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
