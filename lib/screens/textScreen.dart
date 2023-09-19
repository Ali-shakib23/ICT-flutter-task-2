import 'package:flutter/material.dart';

class textScreen extends StatelessWidget {
  final String textk;
  const textScreen({super.key, required this.textk});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
            textk,
          )
      ),
    );
  }
}