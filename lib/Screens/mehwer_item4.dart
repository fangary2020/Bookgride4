


import 'package:computer4/Screens/mehwer_items4.dart';


import 'package:flutter/material.dart';

import '../components/main_screen.dart';
import '../moduls/list_droos.dart';

class DroosMehwer4 extends StatelessWidget {
  const DroosMehwer4({super.key});
  static const routName = '/droosMehwer4';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'المحور الرابع -مشروعات برمجية',
          //color:Colors.white,
          style: Theme.of(context).textTheme.headline6,
        ),
        backgroundColor: const Color.fromARGB(255, 83, 8, 97),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp),
          color: Colors.black,
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
        children: MehwerFour.map(
          (catData) => mehwerItems4 (
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
