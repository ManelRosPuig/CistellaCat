import 'package:cistella_cat/provider/general_provider.dart';
import 'package:cistella_cat/widgets/yellow_background.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Family extends StatelessWidget {
  const Family({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GeneralProvider>(context);
    double dragThreshold = 175;
    double initialXPosition = 0;
    return YellowBackground(
      child: GestureDetector(
        onHorizontalDragUpdate: (DragUpdateDetails details) {
          double currentXPosition = details.globalPosition.dx;
          double dragDistance = currentXPosition - initialXPosition;
          if (dragDistance > dragThreshold) {
            provider.navigateToHome();
          }
        },
        onHorizontalDragStart: (DragStartDetails details) {
          initialXPosition = details.globalPosition.dx;
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.red,
        ),
      ),
    );
  }
}
