import 'package:computer4/Screens/mehwer_item4.dart';
import 'package:computer4/Screens/screen_mehwer1.dart';
import 'package:computer4/Screens/screen_mehwer2.dart';
import 'package:computer4/Screens/screen_mehwer3.dart';
import 'package:flutter/material.dart';

class MainContent1 extends StatelessWidget {
  void viewDroos(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      DroosMehwer3.routName,
    );
  }

  void viewDroos1(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      DroosMehwer4.routName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue[100],
 // height: double.infinity,
          child: Column(
            children: [
              Row(
                 crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Text(
                        'وزارة التربية و التعليم',
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontFamily: 'ElMessiri',
                          fontWeight: FontWeight.bold,
                          fontSize:22,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.indigo,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // SizedBox(
              //   height: 5,
              // ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Text(
                        'ادارة الكمبيوتر التعليمى ',
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontFamily: 'ElMessiri',
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.indigo,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Text(
                        'توجيه الحاسب الالى بمحافظة قنا ',
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontFamily: 'ElMessiri',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.indigo,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                   // margin: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    width: 350,
                    height: 120,
                    child: Text(
                      ' محتوى كتاب تكنولوجيا المعلومات و الاتصالات للصف الرابع الابتدائى',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border: Border.all(
                        color: Colors.indigo,
                        width: 3,
                      ),
                      gradient: LinearGradient(colors: [
                        Colors.blue.shade200,
                        Color.fromARGB(255, 229, 215, 96),
                      ], begin: Alignment.topLeft, end: Alignment.topRight),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => viewDroos(context),
                    splashColor: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 250,
                      height: 60,
                      child: Text(
                        'المحور الثالث ',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: 'Raleway-Bold',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.blue.shade900,
                            Colors.yellow.shade200,
                          ],
                        ),

                        //color: Colors.orangeAccent[100],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 4,
                        ),
                      ),
                      alignment: AlignmentDirectional.center,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => viewDroos1(context),
                    splashColor: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 250,
                      height: 60,
                      child: Text(
                        'المحور الرابع  ',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: 'Raleway-Bold',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.blue.shade900,
                            Colors.yellow.shade200,
                          ],
                        ),

                        //color: Colors.orangeAccent[100],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 4,
                        ),
                      ),
                      alignment: AlignmentDirectional.center,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
