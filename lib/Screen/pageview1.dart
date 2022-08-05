import 'package:flutter/material.dart';

class firstscreen extends StatelessWidget {
  const firstscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('first screen')),
      backgroundColor: Colors.red,
    );
  }
}