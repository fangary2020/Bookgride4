import 'package:flutter/material.dart';

import '../components/curve_cliper.dart';
import '../components/main_screen.dart';

class MainMehawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue.shade300,
              Colors.white,
            ], begin: Alignment.topLeft, end: Alignment.topRight),
            //borderRadius: BorderRadius.circular(15),
          ),
          // color: Colors.blue[200],
          child: Column(children: [
            Stack(
              children: [
                ClipPath(
                  clipper: CurveCliper(),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/mainOne.jpg'),
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.blue.shade300,
                          Colors.white,
                        ], begin: Alignment.topLeft, end: Alignment.topRight),
                        border: Border.all(color: Colors.blue[700]!, width: 1),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 40, horizontal: 10),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('assets/images/ministry.jpg'),
                          fit: BoxFit.cover,
                          height: 110,
                          width: 110,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: AlignmentDirectional.center,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue,
                      Colors.white,
                    ],
                  ),

                  //color: Colors.orangeAccent[100],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  border: Border.all(
                    color: Color.fromARGB(255, 6, 6, 6),
                    width: 2,
                  ),
                ),
                // borderRadius: BorderRadius.circular(15),
                width: double.infinity,
                height: 130,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'كتاب تكنولوجيا المعلومات و الاتصالات',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                      color: Colors.blue.shade900,
                      fontFamily: 'Raleway-Bold',
                    //  overflow: TextOverflow.visible,
                    ),
                    textDirection: TextDirection.rtl,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    //textAlign: TextAlign.center,
                    //overflow: TextOverflow.visible,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                //color: Colors.blue[800],
                border: Border.all(color: Colors.blue[900]!, width: 2),
              ),
              // borderRadius: BorderRadius.circular(15),
              width: double.infinity,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Material(
                  color: Colors.blue.shade100,
                  child: Text(
                    'للصف الرابع الابتدائى',
                    //style: Theme.of(context).textTheme.copyWith().headline5,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.red.shade800,
                      //letterSpacing: 2,
                      fontFamily: 'Raleway-Bold',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue[800],
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (Context) => MainScreen(),
                      ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.login,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'دخول',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'ElMessiri-Bold',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
