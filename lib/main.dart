//import 'package:computer4/bmi.dart';
import 'package:computer4/Screens/contents.dart';
import 'package:computer4/Screens/screen_mehwer2.dart';
import 'package:computer4/screen4/drass1mehewer4.dart';
import 'package:computer4/screen4/drass2mehwer4.dart';
import 'package:computer4/screen4/drass3mehwer4.dart';
import 'package:computer4/screen4/drass4mehwer5.dart';
import 'package:computer4/screen4/drass5mehwer4.dart';
import 'package:computer4/screen4/drass6mehwer4.dart';
import 'package:computer4/screen4/drass7mehwer4.dart';
import 'package:computer4/screen4/drass8mehwer4.dart';
import 'package:computer4/screens3/drass2mehwer3.dart';
import 'package:computer4/screens3/drass3mehwer3.dart';
import 'package:computer4/screens3/drass4mehwer4.dart';
import 'package:computer4/screens3/drass5mehwer3.dart';
import 'package:computer4/screens3/drass6mehwer3.dart';
import 'package:computer4/screens3/drass7mehwer3.dart';


import 'package:computer4/screens2/drass3mehewr2.dart';
import 'package:computer4/screens2/drass4mehewer2.dart';
import 'package:computer4/screens2/drass5mehwer2.dart';
import 'package:computer4/screens2/drass6mehwer2.dart';
import 'package:computer4/screens2/drass7meher2.dart';
import 'package:computer4/screens2/drass8mehwer2.dart';
import 'package:computer4/screens3/drass1mehwer3.dart';
import 'package:computer4/screens3/drass8mehwer3.dart';

import '../screens2/drass1mewher2.dart';

import './Screens/drass8details.dart';

import './Screens/drass7_details.dart';

import './Screens/drass6details.dart';

import './Screens/drass5details.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import './Screens/drass3details.dart';
import 'package:flutter/material.dart';

import './Screens/screen_mehwer1.dart';
import './Screens/drass1details.dart';
import './Screens/drass2details.dart';
import './Screens/mainmehawer.dart';
import 'Screens/drass4details.dart';
import 'Screens/mehwer_item4.dart';
import 'Screens/screen_mehwer3.dart';


// ignore: depend_on_referenced_packages

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
     localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar', 'AE'), // English, no country code
      ],
      title: 'computer App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        // hintColor: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // canvasColor: Color.fromARGB(255, 254, 253, 247),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline5: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontFamily: 'ElMessiri',
                fontWeight: FontWeight.bold,
              ),
              headline6: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: MyHomePage(),
      //home: DroosMehwer1(),
      routes: {
        '/': (context) => MainMehawer(),
        DroosMehwer1.routName: (context) => DroosMehwer1(),
        DroosMehwer2.routName: (context) => DroosMehwer2(),
        DroosMehwer3.routName: (context) => DroosMehwer3(),
        DroosMehwer4.routName: (context) => DroosMehwer4(),
        Drassdetails1.routName: (context) => Drassdetails1(),
        DrassDetails2.routName: (context) => DrassDetails2(),
        DrassDetails3.routName: (context) => DrassDetails3(),
        DroosDetails4.routName: (context) => DroosDetails4(),
        DrassDetails5.routName: (context) => DrassDetails5(),
        DrassDetails6.routName: (context) => DrassDetails6(),
        DrassDetails7.routName: (context) => DrassDetails7(),
        DrassDetails8.routName: (context) => DrassDetails8(),
        Drass1Mehwer2.routName: (context) => Drass1Mehwer2(),
        Drass3Mehwer2.routName: (context) => Drass3Mehwer2(),
        Drass4Mehwer2.routName: (context) => Drass4Mehwer2(),
        Drass5Mehwer2.routName: (context) => Drass5Mehwer2(),
        Drass6Mehwer2.routName: (context) => Drass6Mehwer2(),
        Drass7Mehwer2.routName: (context) => Drass7Mehwer2(),
        Drass8Mehwer2.routName: (context) => Drass8Mehwer2(),
        Drass1Mehwer3.routName: (context) => Drass1Mehwer3(),
        Drass2Mehwer3.routName: (context) => Drass2Mehwer3(),
        Drass3Mehwer3.routName: (context) => Drass3Mehwer3(),
         Drass4Mehwer3.routName: (context) => Drass4Mehwer3(),
          Drass5Mehwer3.routName: (context) => Drass5Mehwer3(),
 Drass6Mehwer3.routName: (context) => Drass6Mehwer3(),
   Drass7Mehwer3.routName: (context) => Drass7Mehwer3(),
   Drass8Mehwer3.routName: (context) => Drass8Mehwer3(),
    Drass1Mehwer4.routName: (context) => Drass1Mehwer4(), 
   Drass2Mehwer4.routName: (context) => Drass2Mehwer4(),   
 Drass3Mehwer4.routName: (context) => Drass3Mehwer4(),   
  Drass4Mehwer4.routName: (context) => Drass4Mehwer4(), 
  Drass5Mehwer4.routName: (context) => Drass5Mehwer4(), 
  Drass6Mehwer4.routName: (context) => Drass6Mehwer4(), 
  Drass7Mehwer4.routName: (context) => Drass7Mehwer4(),
   Drass8Mehwer4.routName: (context) => Drass8Mehwer4(),
    MainContent.routName: (context) => MainContent(),
 
        //MehwerItems.routname:(context) => MehwerItems(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('منهج الصف الرابع الابتدائى'),
      ),
      body: null,
    );
  }
}
