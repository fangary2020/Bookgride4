import 'package:computer4/Screens/screen_mehwer1.dart';
import 'package:computer4/Screens/screen_mehwer2.dart';
import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  static const routName = '/mainContent';
  void viewDroos(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      DroosMehwer1.routName,
    );
  }

  void viewDroos1(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      DroosMehwer2.routName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  child: Text(
                    'وزارة التربية و التعليم',
                    style: TextStyle(
                      color: Colors.brown[900],
                      fontFamily: 'ElMessiri',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.orange,
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
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  child: Text(
                    'ادارة الكمبيوتر التعليمى',
                    style: TextStyle(
                      color: Colors.brown[900],
                      fontFamily: 'ElMessiri',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.orange,
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
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  child: Text(
                    'توجيه الحاسب الالى بمحافظة قنا ',
                    style: TextStyle(
                      color: Colors.brown[900],
                      fontFamily: 'ElMessiri',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.orange,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: 380,
                height: 120,
                child: Text(
                  ' محتوى كتاب تكنولوجيا المعلومات و الاتصالات للصف الرابع الابتدائى',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat-Bold',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow[50],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  border: Border.all(
                    color: Colors.orange,
                    width: 3,
                  ),
                  gradient: LinearGradient(colors: [
                    Colors.orange.shade300,
                    Colors.white,
                  ], begin: Alignment.topRight, end: Alignment.bottomLeft),
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
                    'المحور الاول ',
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
                        Colors.brown.shade700,
                        Colors.yellow.shade300,
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
                    'المحور الثانى  ',
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
                        Colors.brown.shade700,
                        Colors.yellow.shade300,
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
        ],
      ),
    );
  }
}
