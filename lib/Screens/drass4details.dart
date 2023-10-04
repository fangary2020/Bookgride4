import '../Screens/screen_mehwer1.dart';

import '../moduls/list_droos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

import '../moduls/mehewer_details.dart';

class DroosDetails4 extends StatefulWidget {
  static const routName = '/drassdetails4';
  const DroosDetails4({super.key});

  @override
  State<DroosDetails4> createState() => _DroosDetails4State();
}

class _DroosDetails4State extends State<DroosDetails4> {
  

  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final mehwerId = routeArg['id'];
    final mehwerTitle = routeArg['title'];
    
    List<DroosDetails> mehwerOne = droosdetails1;
    return Scaffold(
      appBar: AppBar(
        title: Text(mehwerId!),
        backgroundColor: Color.fromARGB(255, 151, 114, 2),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    '${mehwerTitle}',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'ElMessiri-Bold',
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.brown,
                      Colors.amber,
                    ], begin: Alignment.topLeft, end: Alignment.topRight),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: double.infinity,
                  height: 70,
                ),
                SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    '${mehwerOne[3].imageUrl}',
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '${mehwerOne[3].details1}',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 61, 29, 17),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Cairo',
                        ),
                      ),
                    ],
                  ),
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      padding: EdgeInsets.only(left: 30, right: 30),
                      primary: Color.fromARGB(255, 70, 27, 12),

                      // minimumSize: Size(100, 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DroosMehwer1(),
                        ),
                      );
                    },
                    child: Text(
                      'عودة الى المحور الاول  ',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
