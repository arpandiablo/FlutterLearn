import 'package:flutter/material.dart';

class secondscreen extends StatelessWidget {
  const secondscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('second screen')),
      backgroundColor: Colors.green,
    );
  }
}