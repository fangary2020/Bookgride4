import 'package:computer4/Screens/mehwer_item4.dart';

import 'package:computer4/moduls/mehewer_details.dart';
import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

import '../moduls/list_droos.dart';

class Drass2Mehwer4 extends StatefulWidget {
  static const routName = '/Drass2Mehwer4';
  const Drass2Mehwer4({super.key});

  @override
  State<Drass2Mehwer4> createState() => _Drass2Mehwer4State();
}

class _Drass2Mehwer4State extends State<Drass2Mehwer4> {
  late VideoPlayerController AssetController;
  // late VideoPlayerController fileController;
  // late VideoPlayerController networkController;
  // String vURL = "https://www.youtube.com/watch?v=iOXHI9oQmtw";
  @override
  void initState() {
    super.initState();
    // networkController= VideoPlayerController.network(vURL)
    //   ..initialize().then((value) {setState(() {

    //   });});
    AssetController = VideoPlayerController.asset("assets/vedio/moshklat.mp4")
      ..initialize().then((_) {
        // Ensure the first frame is shown
        // after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final mehwerId = routeArg['id'];
    final mehwerTitle = routeArg['title'];

    List<DroosDetails> MehwerFour = droosdetails4;
    return Scaffold(
      appBar: AppBar(
        title: Text(mehwerId!, style: (TextStyle(
          color: Colors.black,
          fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
          ))),
        backgroundColor: const Color.fromARGB(255, 245, 200, 142),
        centerTitle: true,
        elevation: 5,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp),
          color: Colors.black,
          iconSize: 30,
          onPressed: () {
            AssetController.pause();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DroosMehwer4(),
              ),
            );
          },
          alignment: Alignment.centerRight,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              child: Text(
                '${mehwerTitle}',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.yellow,
                 Color.fromARGB(255, 245, 200, 142),
                ], begin: Alignment.topLeft, end: Alignment.topRight),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildVideoPlayer(AssetController),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 220),
              width: 150,
              height: 40,
              child: Text(
                'لنتعلم',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.limeAccent,
                   Color.fromARGB(255, 238, 163, 65),
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
              alignment: AlignmentDirectional.center,
            ),
           
            SizedBox(
              height: 10,
            ),
             Container(
                margin: EdgeInsets.only(left: 150),
                width: 200,
                height: 40,
                alignment: Alignment.centerRight,
                child: Text(
                  'اتخاذ خطوات لحل مشكلة ما ',
                  style: TextStyle(
                    color: Colors.brown[900],
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.right,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(
              height: 10,
            ),
                Container(
              padding: EdgeInsets.all(5.0),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '${MehwerFour[1].title}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ],
                ),
                overflow: TextOverflow.clip,
                textAlign: TextAlign.justify,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 236, 238, 213),
                        Colors.limeAccent,
                      ],
                    ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color: Color.fromARGB(255, 6, 6, 6),
                  width: 2,
                ),
              ),
            ), 
               SizedBox(
              height: 10,
            ),
             Container(
               margin: EdgeInsets.only(left: 30),
                width: double.infinity,
                height: 50,
                alignment: Alignment.centerRight,
                child: Text(
                  'فيما يلى بعض الخطوات الشائعة التى يمكنك اتخاذها :',
                  style: TextStyle(
                    color: Colors.brown[900],
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.right,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
              ), 
                 SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 30,
                            height: 30,
                            child: Text(
                                    '1',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                    textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.center,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                         const Color.fromARGB(255, 142, 56, 25),
                                        Color.fromARGB(255, 244, 143, 138),
                                      ],
                                    ),
                                    
                                    //color: Colors.orangeAccent[100],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    // border: Border.all(
                                    //   color: Color.fromARGB(255, 6, 6, 6),
                                    //   width: 2,
                                    // ),
                            ),
                            alignment: AlignmentDirectional.center,
                      ),
                    Expanded(
                      child: Container(
                        
                          padding: EdgeInsets.all(5.0),
                          
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'بناء فرضية الفرضية هى تخمين علمى حول كيفية حدوث الاشياء هى محاولة للاجابة عن سؤالك بتفسير يمكن اختباره .',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color:Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo',
                                  ),
                                ),
                              ],
                            ),
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.justify,
                          ),
                        ),
                    ),
                      
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 30,
                            height: 30,
                            child: Text(
                                    '2',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                    textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.center,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                          Color.fromARGB(255, 142, 56, 25),
                                        Color.fromARGB(255, 244, 143, 138),
                                      ],
                                    ),
                                    
                                    //color: Colors.orangeAccent[100],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    // border: Border.all(
                                    //   color: Color.fromARGB(255, 6, 6, 6),
                                    //   width: 2,
                                    // ),
                            ),
                            alignment: AlignmentDirectional.center,
                      ),
                  Expanded(
                    child: Container(
                                  padding: EdgeInsets.all(5.0),
                                  
                                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'اختبر فرضيتك لا تنجز أى إختبار يعرضك للخطر .',
                          style: TextStyle(
                            fontSize: 20,
                            color:Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cairo',
                          ),
                        ),
                      ],
                    ),
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.justify,
                                  ),
                                ),
                  ),
                ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Container(
                        width: 30,
                            height: 30,
                            child: Text(
                                    '3',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                    textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.center,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                         Color.fromARGB(255, 142, 56, 25),
                                        Color.fromARGB(255, 244, 143, 138),
                                      ],
                                    ),
                                    
                                    //color: Colors.orangeAccent[100],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    // border: Border.all(
                                    //   color: Color.fromARGB(255, 6, 6, 6),
                                    //   width: 2,
                                    // ),
                            ),
                            alignment: AlignmentDirectional.center,
                      ),
                       Expanded(
                    child: Container(
                                  padding: EdgeInsets.all(5.0),
                                  
                                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'هل نجح اختيارك ؟ ما من مشكلة إذا لم ينجح فنحن نتعلم من أخطائنا . ماذا تعلمت ؟ كيف سيساعدك ذلك على بناء فرضيتك التالية ؟',
                          style: TextStyle(
                            fontSize: 20,
                            color:Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cairo',
                          ),
                        ),
                      ],
                    ),
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.justify,
                                  ),
                                ),
                  ),
                ],),
              ],
            ),
              Container(
                margin: EdgeInsets.only(left: 120),
                width: 230,
                height: 40,
                alignment: Alignment.centerRight,
                child: Text(
                  'تقسيم المشكلات الى أجزاء صغيرة',
                  style: TextStyle(
                    color: Colors.brown[900],
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.right,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(
              height: 10,
            ),
             Container(
              padding: EdgeInsets.all(5.0),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '${MehwerFour[1].details1}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ],
                ),
                overflow: TextOverflow.clip,
                textAlign: TextAlign.justify,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 236, 238, 213),
                        Colors.limeAccent,
                      ],
                    ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color: Color.fromARGB(255, 6, 6, 6),
                  width: 2,
                ),
              ),
            ), SizedBox(
              height: 10,
            ), 
            Container(
              // margin: EdgeInsets.only(left: 40),
              padding: const EdgeInsets.all(8.0),
              width: double.infinity,
              height: 150,
              alignment: Alignment.center,
              child: Text(
                '${MehwerFour[1].details2}',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.justify,
              ),
              
            ),
            
 Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 30,
                            height: 30,
                            child: Text(
                                    '1',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                    textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.center,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                         const Color.fromARGB(255, 142, 56, 25),
                                        Color.fromARGB(255, 244, 143, 138),
                                      ],
                                    ),
                                    
                                    //color: Colors.orangeAccent[100],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    // border: Border.all(
                                    //   color: Color.fromARGB(255, 6, 6, 6),
                                    //   width: 2,
                                    // ),
                            ),
                            alignment: AlignmentDirectional.center,
                      ),
                    Expanded(
                      child: Container(
                        
                          padding: EdgeInsets.all(5.0),
                          
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'ٌقرر وجهة الرحلة',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color:Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo',
                                  ),
                                ),
                              ],
                            ),
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.justify,
                          ),
                        ),
                    ),
                      
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 30,
                            height: 30,
                            child: Text(
                                    '2',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                    textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.center,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                          Color.fromARGB(255, 142, 56, 25),
                                        Color.fromARGB(255, 244, 143, 138),
                                      ],
                                    ),
                                    
                                    //color: Colors.orangeAccent[100],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    // border: Border.all(
                                    //   color: Color.fromARGB(255, 6, 6, 6),
                                    //   width: 2,
                                    // ),
                            ),
                            alignment: AlignmentDirectional.center,
                      ),
                  Expanded(
                    child: Container(
                                  padding: EdgeInsets.all(5.0),
                                  
                                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'حدد تاريخ الرحلة و توقيتها .',
                          style: TextStyle(
                            fontSize: 20,
                            color:Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cairo',
                          ),
                        ),
                      ],
                    ),
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.justify,
                                  ),
                                ),
                  ),
                ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Container(
                        width: 30,
                            height: 30,
                            child: Text(
                                    '3',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                    textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.center,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                         Color.fromARGB(255, 142, 56, 25),
                                        Color.fromARGB(255, 244, 143, 138),
                                      ],
                                    ),
                                    
                                    //color: Colors.orangeAccent[100],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    // border: Border.all(
                                    //   color: Color.fromARGB(255, 6, 6, 6),
                                    //   width: 2,
                                    // ),
                            ),
                            alignment: AlignmentDirectional.center,
                      ),
                       Expanded(
                    child: Container(
                                  padding: EdgeInsets.all(5.0),
                                  
                                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'إسال عن سعر الرحلة لكل تلميذ',
                          style: TextStyle(
                            fontSize: 20,
                            color:Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cairo',
                          ),
                        ),
                      ],
                    ),
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.justify,
                                  ),
                                ),
                  ),
                ],
                ),
              
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Container(
                        width: 30,
                            height: 30,
                            child: Text(
                                    '4',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                    textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.center,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                         Color.fromARGB(255, 142, 56, 25),
                                        Color.fromARGB(255, 244, 143, 138),
                                      ],
                                    ),
                                    
                                    //color: Colors.orangeAccent[100],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    // border: Border.all(
                                    //   color: Color.fromARGB(255, 6, 6, 6),
                                    //   width: 2,
                                    // ),
                            ),
                            alignment: AlignmentDirectional.center,
                      ),
                       Expanded(
                    child: Container(
                                  padding: EdgeInsets.all(5.0),
                                  
                                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'حدد كيفية وصولك مع زملائك الى الوجهة .',
                          style: TextStyle(
                            fontSize: 20,
                            color:Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cairo',
                          ),
                        ),
                      ],
                    ),
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.justify,
                                  ),
                                ),
                  ),
                ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Container(
                        width: 30,
                            height: 30,
                            child: Text(
                                    '5',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                    textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.center,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                         Color.fromARGB(255, 142, 56, 25),
                                        Color.fromARGB(255, 244, 143, 138),
                                      ],
                                    ),
                                    
                                    //color: Colors.orangeAccent[100],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    // border: Border.all(
                                    //   color: Color.fromARGB(255, 6, 6, 6),
                                    //   width: 2,
                                    // ),
                            ),
                            alignment: AlignmentDirectional.center,
                      ),
                       Expanded(
                    child: Container(
                                  padding: EdgeInsets.all(5.0),
                                  
                                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'حدد الاغراض التى على التلاميذ إحضارها معهم',
                          style: TextStyle(
                            fontSize: 20,
                            color:Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cairo',
                          ),
                        ),
                      ],
                    ),
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.justify,
                                  ),
                                ),
                  ),
                ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Container(
                        width: 30,
                            height: 30,
                            child: Text(
                                    '6',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                    textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.center,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                         Color.fromARGB(255, 142, 56, 25),
                                        Color.fromARGB(255, 244, 143, 138),
                                      ],
                                    ),
                                    
                                    //color: Colors.orangeAccent[100],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    // border: Border.all(
                                    //   color: Color.fromARGB(255, 6, 6, 6),
                                    //   width: 2,
                                    // ),
                            ),
                            alignment: AlignmentDirectional.center,
                      ),
                       Expanded(
                    child: Container(
                                  padding: EdgeInsets.all(5.0),
                                  
                                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'ضع قائمة بالقواعد التى يجب اتباعها يوم الرحلة .',
                          style: TextStyle(
                            fontSize: 19,
                            color:Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cairo',
                          ),
                        ),
                      ],
                    ),
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.justify,
                                  ),
                                ),
                  ),
                ],
                ),
              ],
              
            ),
            SizedBox(
              height: 5,
            ),
            
            Container(
              // margin: EdgeInsets.only(left: 40),
              width: double.infinity,
              height: 150,
              alignment: Alignment.center,
              child: Text(
                '${MehwerFour[1].details3}',
                style: TextStyle(
                  color: Colors.brown[800],
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.justify,
              ),
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
                  primary:  Color.fromARGB(255, 96, 34, 12),

                  // minimumSize: Size(100, 20),
                ),
                onPressed: () {
                  AssetController.pause();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DroosMehwer4(),
                    ),
                  );
                },
                child: Text(
                  'عودة الى المحور الرابع  ',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

buildVideoPlayer(VideoPlayerController controller) {
  return Column(
    children: [
      Center(
        child: controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: VideoPlayer(controller),
              )
            : Container(),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              onPressed: () async {
                Duration? value = await controller.position;
                var d = value! - Duration(seconds: 10);
                controller.seekTo(Duration(seconds: d.inSeconds));
              },
              child: Text("<<")),
          ElevatedButton(
            child: Icon(Icons.play_arrow_rounded),
            onPressed: () {
              controller.play();
            },
          ),
          ElevatedButton(
            child: Icon(Icons.pause_outlined),
            onPressed: () {
              controller.pause();
            },
          ),
          ElevatedButton(
              onPressed: () async {
                Duration? value = await controller.position;
                var d = Duration(seconds: 10) + value!;
                controller.seekTo(Duration(seconds: d.inSeconds));
              },
              child: Text(">>")),
        ],
      )
    ],
  );
}
