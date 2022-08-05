import 'package:flutter/material.dart';
import 'package:untitled/Screen/pageview1.dart';
import 'package:untitled/Screen/pageview2.dart';
import 'package:untitled/Screen/pageview3.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<Widget> tabView = [
    const Tab(
      icon: Icon(Icons.android),
    ),
    const Tab(
      icon: Icon(Icons.phone_iphone),
    ),
    const Tab(
      icon: Icon(Icons.phonelink_rounded),
    ),
  ];

  List<Widget> tabScreen = [
    firstscreen(),
    secondscreen(),
    thirdscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('List Check'),
            bottom: TabBar(
              tabs: tabView,
            ),
          ),
          body: TabBarView(
            children: tabScreen,
          )),
    );
  }
}
