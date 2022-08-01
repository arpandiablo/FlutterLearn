import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);

  List<String> itemList = [
    'Arpan Gautam',
    'Discord',
    'Github',
    'Messenger',
    'Fall Guys',
  ];
  List<String> imageList = [
    'image/A1.jpg',
    'image/discord.png',
    'image/github.png',
    'image/messenger.png',
    'image/FG.png',
  ];
  List<String> jobList = [
    'Job1',
    'Job2',
    'Job3',
    'Job4',
    'Job5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Check')),
      body: ListView.separated(separatorBuilder: (context, index) => Divider(),
          itemCount: itemList.length,
          itemBuilder: (context, index) {
            return myList(
              title: itemList[index],
              image: imageList[index],
              job: jobList[index],
            );
          }),
    );
  }
}

Widget myList({required String title, required String image, required String job}) {
  return Row(
    children: [
      Text(title),
    ],
  );
}

// class MyList extends StatelessWidget {
//   const MyList({Key? key, required this.title,required this.job, required this.image}) : super(key: key);
//   final String title;
//   final String image;
//   final String job;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             CircleAvatar(backgroundImage: AssetImage(image),radius: 50,),
//             Text(title),
//           ],
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 200),
//           child: Text(job),
//         ),
//         SizedBox(
//           height: 10,
//         )
//       ],
//     );
//   }
// }
