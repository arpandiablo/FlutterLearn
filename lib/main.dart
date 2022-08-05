import 'package:flutter/material.dart';
import 'package:untitled/firstscreen.dart';
import 'package:untitled/task1.dart';
import 'package:untitled/task2.dart';

import 'classwork.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // to remove the debug tag in default app top
      title: 'MyFirstProject',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),

      // home: ClassWork(),
      initialRoute: '/',
      routes: {
        '/' : (context) =>  LoginPage(),
        '/second' : (context) =>  FirstScreen(),
        '/third' : (context) =>  ThirdScreen(),
      },
      // const MyHomePage(title: 'Avatar'),
    );
  }
}