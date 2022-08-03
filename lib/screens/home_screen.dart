
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/products_model.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Item> items = [
    const Item(
      url:
          "https://d2ajlz7o3p8ddv.cloudfront.net/media/cards/images/SNS_VX9527_CX89100_omnidirectional_1080_1350.jpg",
      title: "Camera",
      price: "\$80",
    ),
    const Item(
      url:
          'https://d2ajlz7o3p8ddv.cloudfront.net/media/cards/images/FC_20220123_ALPHA1_A003_SK_0014_low_res.jpg',
      title: "DJ",
      price: "\$180",
    ),
    const Item(
      url:
          'https://d2ajlz7o3p8ddv.cloudfront.net/media/cards/images/Sequence_01.00_00_06_05.Still001.jpg',
      title: "TV",
      price: "\$180",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comunity'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Center(
                child: Text("Alpha Community"),
              ),
            ),
            Column(
              children:  [
                ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home_outlined),
                  onTap: () {
                    print('hi');
                  },
                  
                ),
                ListTile(
                  title: Text('Gallery'),
                  leading: Icon(Icons.image_outlined),
                  onTap: () {
                     Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailScreen(),
                      ));
                  },
                ),
                ListTile(
                  title: Text('Community'),
                  leading: Icon(Icons.chat_rounded),
                ),
                ListTile(
                  title: Text('Login'),
                  leading: Icon(Icons.login),
                ),
              ],
            )
          ],
        ),
      ),
      body: Container(
        height: 250,
        child: ListView.separated(
          separatorBuilder: ((context, index) => const SizedBox(
                width: 10,
              )),
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (BuildContext context, index){
            return InkWell(
              onTap: () {
                print("click");
                // Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => DetailScreen(),
                //       ));
              },
              child: buildCard(item: items[index], cx: context),
            );
          },
        ),
      ),
    );
  }
}

Widget buildCard({required Item item,  cx}) => InkWell(
      onTap: () {
       print('-----------');
       Navigator.of(cx).push(MaterialPageRoute(
                        builder: (context) => DetailScreen(),
                      ));
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 1, 0, 2),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(item.url), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Text(
                "${item.title}",
                style: TextStyle(
                  backgroundColor: Colors.black,
                  fontSize: 25,
                  letterSpacing: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );

      //  Image.network('https://d2ajlz7o3p8ddv.cloudfront.net/media/cards/images/SNS_VX9527_CX89100_omnidirectional_1080_1350.jpg', height: 150, width: 150,),
      //                 Text(
      //                   "Good Focul Length",
      //                   style: TextStyle(
      //                     color: Colors.black,
      //                   ),
      //                 )
