import 'package:flutter/material.dart';

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

      home: const MyHomePage(title: 'D I A B L O'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
// extra chiz in  stateful  than stateless  we can change the state

}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: PreferredSize(
        //   child: Container(
        //     padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        //     child: const Padding(
        //       padding: EdgeInsets.only(left: 163.0, top: 20.0, bottom: 20.0),
        //       child: Text(
        //         'Lets Code',
        //         style: TextStyle(
        //             fontSize: 20.0,
        //             fontWeight: FontWeight.w500,
        //             color: Colors.white),
        //       ),
        //     ),
        //     decoration: const BoxDecoration(
        //         gradient: LinearGradient(colors: [Colors.red, Colors.yellow]),
        //         boxShadow: [
        //         ]),
        //   ),
        //   preferredSize: Size(MediaQuery.of(context).size.width, 150.0),
        // ),
        backgroundColor: Color(0xfff2f0f5),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    width: 30,
                    // margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.white,
                          Colors.white,
                        ]),
                        border: Border.all(color: Colors.grey, width: 0),
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(color: Colors.green),
                        ]),
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset('image/messenger.png',width: 30,height: 30,color: Color(0xff4840fe)),
                          // Icon(Icons.message,color: Color(0xff4840fe),size: 16),
                          Text(
                            "Messages",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    width: 30,
                    // margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.white,
                          Colors.white,
                        ]),
                        border: Border.all(color: Colors.grey, width: 0),
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(color: Colors.green),
                        ]),
                    child: Center(
                      child: Column(
                        children: [
                          Icon(Icons.call,color: Color(0xff4840fe),size: 30),
                          Text(
                            "Call",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    width: 30,
                    // margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.white,
                          Colors.white,
                        ]),
                        border: Border.all(color: Colors.grey, width: 0),
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(color: Colors.green),
                        ]),
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset('image/img.png',width: 30,height: 30,color: Color(0xff4840fe)),
                          // Icon(Icons.video_camera_back_outlined,color: Color(0xff4840fe),size: 30),
                          Text(
                            "Video",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    width: 30,
                    // margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.white,
                          Colors.white,
                        ]),
                        border: Border.all(color: Colors.grey, width: 0),
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(color: Colors.green),
                        ]),
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset('image/img_1.png',width: 30,height: 30,color: Color(0xffdddddd)),
                          // Icon(Icons.mail,color: Color(0xffdddddd),size: 30),
                          Text(
                            "Mail",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      // margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.white,
                            Colors.white,
                          ]),
                          border: Border.all(color: Colors.grey, width: 0),
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(color: Colors.green),
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Today",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "10:50 am",
                                style: TextStyle(fontSize: 15, color: Colors.black),
                              ),
                              Text(
                                "Incoming Call",
                                style: TextStyle(fontSize: 15, color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        // padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        // child: const Padding(
        //   padding: EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
        //   child: Text(
        //     'D I A B L O',
        //     textAlign: TextAlign.center,
        //     style: TextStyle(
        //         fontSize: 20.0,
        //         fontWeight: FontWeight.bold,
        //         color: Colors.white),
        //   ),
        // ),

        // Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       const Text('Counter:'),
        //       Text(
        //         '$_counter',
        //         style: Theme.of(context).textTheme.headline4,
        //       ),
        //     ],
        //   ),
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),
        // ),
      ),
    );
  }
}
//stl  to create a stateless and stf to create a stateful class
//.*
// ctrl+alt+l for refractoring the code
