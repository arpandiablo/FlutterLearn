import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);

List<String> itemList = [
  'item1',
  'item2',
  'item3',
  'item4',
  'item5',
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Check'),
      ),
      body: ListView.separated(separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.red),itemCount: 100,itemBuilder: (context, index){
        return ListTile(
          title: Text('Hello$index'),
        );
      }),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('First Screen'),
    //   ),
    //   body: Center(
    //     child: ElevatedButton(
    //       onPressed: (){
    //         Navigator.pushNamed(context, '/second');
    //         // Navigator.pushReplacementNamed(context, '/second');
    //       },
    //       child: Text('Launch Screen'),
    //     ),
    //   ),
    // );
  }
}
