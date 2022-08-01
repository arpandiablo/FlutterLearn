import 'package:flutter/material.dart';
import 'package:untitled/firstscreen.dart';
import 'package:untitled/secondscreen.dart';
import 'package:untitled/task1.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';

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
      title: 'Fun Masti',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),

      // home: FirstScreen(),
      initialRoute: '/',
      routes: {
        '/' : (context) =>  FirstScreen(),
        '/second' : (context) =>  SecondScreen(),
      },
      // const MyHomePage(title: 'Avatar'),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// // extra chiz in  stateful  than stateless  we can change the state
//
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   // int _counter = 0;
//   final _formKey = GlobalKey<FormState>();
//
//   // void _incrementCounter() {
//   //   setState(() {});
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: Colors.grey,
//         // appBar: AppBar(
//         //
//         //   title: Text("Search",style:TextStyle(
//         //     fontSize: 16,
//         //
//         //   )),
//         //   leading:IconButton(
//         //
//         //     icon: Icon(Icons.search,size: 25),
//         //
//         //     onPressed: () => Scaffold.of(context).openDrawer(),
//         //   ),
//         //
//         //   actions: [
//         //     ClipRRect(borderRadius: BorderRadius.circular(60.0),
//         //       child: ClipRRect(
//         //         borderRadius: BorderRadius.circular(50.0),
//         //         child: Container(
//         //
//         //
//         //           child: Image.asset('image/A1.jpg',width:40,height:10,fit:BoxFit.cover,),
//         //         ),
//         //       ),
//         //     )
//         //   ],
//         // ),
//
//         body: Padding(
//             padding: const EdgeInsets.all(10),
//             child: Column(
//                 children: [
//             Expanded(
//             child: Container(
//             // height: 500,
//             // width: 500,
//             decoration: BoxDecoration(
//             // color:Color(0xfffbcf7c),
//             gradient: LinearGradient(colors: [
//             Colors.white,
//                 Colors.black,
//                 ]),
//             border: Border.all(color: Colors.grey, width: 0),
//             borderRadius: BorderRadius.circular(13),
//             boxShadow: [
//               BoxShadow(color: Colors.green),
//             ]),
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
//           child: Column(
//               children: [
//           ClipRRect(
//           borderRadius: BorderRadius.circular(50.0),
//           child: Image.asset(
//             'image/A1.jpg',
//             width: 90,
//             height: 90,
//             fit: BoxFit.cover,
//           ),
//         ),
//         new Text(
//           "Arpan Gautam",
//           style: TextStyle(
//             fontSize: 15,
//             color: Colors.white,
//             fontStyle: FontStyle.italic,
//           ),
//         ),
//         TextButton(
//             onPressed: () =>
//                 showDialog<String>(
//                     context: context,
//                     builder: (BuildContext context) =>
//                         AlertDialog(
//                           title: Text('Are you ready?'),
//                           content: Text('Sachhai Ready Ho?'),
//                           actions: <Widget>[
//                             TextButton(
//                                 onPressed: () =>
//                                     Navigator.pop(context),
//                                 child: Text('Haina')),
//                             TextButton(
//                                 onPressed: () =>
//                                     Navigator.pop(context),
//                                 child: Text('Ho Ho')),
//                           ],
//                         )),
//             child: Text("Show Dialog",
//                 style: TextStyle(color: Colors.black))),
//         ElevatedButton(
//           // style: ButtonStyle(backgroundColor: ),
//             onPressed: () =>
//                 ScaffoldMessenger.of(context)
//                     .showSnackBar(SnackBar(
//                     backgroundColor: Colors.blue,
//                     content: Text('Ho Ho',
//                         style: TextStyle(color: Colors.yellow)),
//                     action: SnackBarAction(
//                       label: 'Lets Go!!',
//                       textColor: Colors.yellow,
//                       onPressed: () {},
//                     ))),
//             child: Text('Show Snackbar',
//                 style: TextStyle(color: Colors.yellow))),
//         Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               TextFormField(
//           decoration: InputDecoration(
//           hintText: 'Name',
//               border: OutlineInputBorder(),
//               contentPadding: EdgeInsets.all(40),
//               filled: true,
//               fillColor: Colors.blue.shade100,
//               prefixIcon: Icon(Icons.mail),),
//                 // The validator receives the text that the user has entered.
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter some text';
//                   }
//                   return null;
//                 },
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Validate returns true if the form is valid, or false otherwise.
//                     if (_formKey.currentState!.validate()) {
//                       // If the form is valid, display a snackbar. In the real world,
//                       // you'd often call a server or save the information in a database.
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(content: Text('Valid Input')),
//                       );
//                     }
//                   },
//                   child: const Text('Submit'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         /* TextFormField(
//                             decoration: InputDecoration(
//                               // enabledBorder: UnderlineInputBorder(
//                               //   borderSide: BorderSide(color: Colors.red),
//                               // ),
//                                 hintText: 'Email',
//                                 border: OutlineInputBorder(),
//                                 contentPadding: EdgeInsets.all(5),
//                                 filled: true,
//                                 fillColor: Colors.blue.shade100,
//                                 // labelText: 'Fun',
//                                 // helperText: 'Help',
//                                 // counterText: 'Counter',
//                                 // icon: Icon(Icons.mail),
//                                 prefixIcon: Icon(Icons.mail),
//                                 // suffixIcon: Icon(Icons.add_circle_outline)
//                                 )
//                                 ), */
//         SizedBox(
//         height: 50,
//       ),
//       Row(
//         children: [
//           Expanded(
//             child: Column(
//               children: [
//                 InkWell(
//                     child: ClipRRect(
//                         borderRadius:
//                         BorderRadius.circular(50.0),
//                         child: Image.asset(
//                           'image/discord.png',
//                           width: 60,
//                           height: 60,
//                           fit: BoxFit.cover,
//                         )),
//                     onTap: () =>
//                         launch(
//                             'https://discordapp.com/users/399846015139708929')),
//                 InkWell(
//                     child: Text(
//                       "Discord",
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.white,
//                         fontStyle: FontStyle.italic,
//                       ),
//                     ),
//                     onTap: () =>
//                         launch(
//                             'https://discordapp.com/users/399846015139708929')),
//               ],
//             ),
//           ),
//           SizedBox(
//             width: 90,
//           ),
//           Expanded(
//             child: Column(
//               children: [
//                 InkWell(
//                   child: ClipRRect(
//                       borderRadius:
//                       BorderRadius.circular(50.0),
//                       child: Image.asset(
//                         'image/github.png',
//                         width: 60,
//                         height: 60,
//                         fit: BoxFit.cover,
//                       )),
//                   onTap: () =>
//                       launch(
//                           'https://github.com/arpandiablo'),
//                 ),
//                 InkWell(
//                     child: Text(
//                       "Github",
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.white,
//                         fontStyle: FontStyle.italic,
//                       ),
//                     ),
//                     onTap: () =>
//                         launch(
//                             'https://github.com/arpandiablo')),
//               ],
//             ),
//           ),
//         ],
//       )
//       ],
//     ),
//     ),
//     ),
//     ),
//     ],
//     ),
//     )
//     ,
//     )
//     ,
//     );
//   }
// }
// //stl  to create a stateless and stf to create a stateful class
// //.*
// // ctrl+alt+l for refractoring the code
