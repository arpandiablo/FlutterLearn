import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskOne extends StatelessWidget {
  const TaskOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Title(color: Colors.black, child: TextField('Welcome\nArpan Gautam')),
        ),
      ),
    );
  }
}
