

import '../Screens/mehwer_items.dart';

import 'package:flutter/material.dart';

import '../components/main_screen.dart';
import '../moduls/list_droos.dart';
import 'contents.dart';

class   DroosMehwer1 extends StatelessWidget {
  const DroosMehwer1({super.key});
  static const routName = '/droosMehwer1';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'المحور الاول - دور التكنولوجيا فى حياتنا اليومية',
          style: Theme.of(context).textTheme.headline6,
        ),
        backgroundColor: Colors.cyan[800],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp),
          color: Colors.black,
          iconSize: 24,
          alignment: Alignment.centerRight,
          onPressed: () {
            
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => MainScreen(),
             ),
            );
          },
         
        ),
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        children: Mehwerone.map(
          (catData) => MehwerItems(
              catData.identifer, catData.id, catData.title, catData.color),
        ).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 500,
          childAspectRatio: 3 / 1,
          crossAxisSpacing: 30,
          mainAxisSpacing: 25,
        ),
      ),
    );
  }
}
