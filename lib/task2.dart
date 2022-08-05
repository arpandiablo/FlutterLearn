import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  ThirdScreen({Key? key}) : super(key: key);

  List<String> itemList = [
    'Christine Stegner',
    'Tracy Smith',
    'Patricia Parker',
    'Tanesha McIntosh',
    'Brian Foster',
  ];
  List<String> imageList = [
    'image/A1.jpg',
    'image/p2.png',
    'image/p3.png',
    'image/p4.png',
    'image/p5.png',
  ];
  List<String> jobList = [
    'Design Lead',
    'Finance',
    'Marketing Lead',
    'Designer',
    'Developer',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Column(
        children: [
          Row(
            children: [
              Text('Team',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black),),
            ],
          ),
        ],
      ),backgroundColor: Colors.grey.shade300),
      body: ListView.separated(
          separatorBuilder: (context, index) => Divider(),
          itemCount: itemList.length,
          itemBuilder: (context, index) {
            return MyList(
              title: itemList[index],
              image: imageList[index],
              job: jobList[index],
            );
          }),
    );
  }
}

class MyList extends StatelessWidget {
  const MyList(
      {Key? key, required this.title, required this.job, required this.image})
      : super(key: key);
  final String title;
  final String image;
  final String job;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 30,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 50), child: Text(title,style: TextStyle(fontWeight: FontWeight.w900),)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 110),
          child: Text(job),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
