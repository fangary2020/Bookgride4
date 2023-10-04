

import 'package:computer4/Screens/mehwer_items3.dart';



import 'package:flutter/material.dart';

import '../components/main_screen.dart';
import '../moduls/list_droos.dart';

class DroosMehwer3 extends StatelessWidget {
  const DroosMehwer3({super.key});
  static const routName = '/droosMehwer3';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'المحور الثالث -المواطنه الرقمية',
          //color:Colors.white,
          style: Theme.of(context).textTheme.headline6,
        ),
        backgroundColor: Colors.indigo,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp),
          color: Colors.white,
          iconSize: 28,
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
        children: Mehwerthird.map(
          (catData) => mehwerItems3 (
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
