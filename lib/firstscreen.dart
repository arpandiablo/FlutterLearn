import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);

  List<String> itemList=[
    'Christine Stegner',
    'Tracy Smith',
    'Patricia Parker',
    'Tanesha McIntosh',
    'Brian Foster',
  ];
  List<String> imageList=[
    'image/A1.jpg',
    'image/p2.png',
    'image/p3.png',
    'image/p4.png',
    'image/p5.png',
  ];
  List<String> priceList=[
    '\$100',
    '\$200',
    '\$300',
    '\$400',
    '\$100',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('List Check')),
        body:
        GridView.count(crossAxisCount: 2,
          children: List<Widget>.generate(5, (index){
            return GridTile(child: Mylist(list1: itemList[index],list2: imageList[index],list3: priceList[index],
            ),
            );
          }
          ),)
    );
  }
}
class Mylist extends StatelessWidget {
  final String list1;
  final String list2;
  final String list3;
  Mylist({Key? key, required this.list1, required this.list2, required this.list3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, '/third');
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: columnWithContent(),
        ),
      ),
    );
  }

  columnWithContent() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 150),
          child: Icon(Icons.favorite_border),
        ),
        Center(child: CircleAvatar(backgroundImage: AssetImage(list2),radius: 30,)),
        SizedBox(
          height: 10,
        ),
        Text(list1,style: TextStyle(
          fontWeight: FontWeight.w900,
        )),
        SizedBox(
          height: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('20 min'),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.star_border,color: Colors.yellow,size: 20),
                Text('4.5'),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(list3,style: TextStyle(
              fontWeight: FontWeight.w900,
            )),
            Icon(Icons.add_circle)
          ],
        ),
      ],
    );
  }
}