import '../Screens/mehwer_items2.dart';
import 'package:flutter/material.dart';
import '../components/main_screen.dart';
import '../moduls/list_droos.dart';

class DroosMehwer2 extends StatelessWidget {
  const DroosMehwer2({super.key});
static const routName = '/droosMehwer2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('المحور الثانى - احتياطات السلامة الرقمية'),
        backgroundColor: const Color.fromARGB(255, 107, 81, 2),
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
          children: MehwerTow.map((catData) =>
          MehwerItems2(catData.identifer,catData.id,catData.title,catData.color),
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