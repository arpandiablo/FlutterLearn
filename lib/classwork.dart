import 'package:flutter/material.dart';
import 'package:untitled/Screen/pageview1.dart';
import 'package:untitled/Screen/pageview2.dart';
import 'package:untitled/Screen/pageview3.dart';

class ClassWork extends StatefulWidget {
  const ClassWork({Key? key}) : super(key: key);

  @override
  State<ClassWork> createState() => _ClassWorkState();
}

class _ClassWorkState extends State<ClassWork> {
  int selectedIndex = 0;

  //list of widgets to call ontap
  final widgetOptions = [
    firstscreen(),
    secondscreen(),
    thirdscreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final widgetTitle = ['Chat', 'Status', 'Call'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Class Work'),
      ),
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.messenger,color: Colors.blue,),label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.stacked_line_chart_outlined,color: Colors.blue,),label: 'Status'),
          BottomNavigationBarItem(icon: Icon(Icons.call,color: Colors.blue,),label: 'Call')
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.red,
        onTap: onItemTapped,
        selectedLabelStyle: TextStyle(color: Colors.red,fontSize: 20),
        unselectedFontSize: 16,
        selectedIconTheme: IconThemeData(color: Colors.blue,opacity: 0.5,size: 30),
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(color: Colors.pink,fontSize: 18),
      ),
    );
  }
}

class ChatFragment {
}

class StatusFragment {
}

class CallFragment {
}



