import 'package:computer4/Screens/mehwer_item4.dart';

import 'package:computer4/moduls/mehewer_details.dart';
import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

import '../moduls/list_droos.dart';

class Drass8Mehwer4 extends StatefulWidget {
  static const routName = '/Drass8Mehwer4';
  const Drass8Mehwer4({super.key});

  @override
  State<Drass8Mehwer4> createState() => _Drass8Mehwer4State();
}

class _Drass8Mehwer4State extends State<Drass8Mehwer4> {
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
    AssetController = VideoPlayerController.asset("assets/vedio/graphic.mp4")
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
    //final icon1  = Icons.notifications_active_rounded;
    List<DroosDetails> MehwerFour = droosdetails4;
    return Scaffold(
      appBar: AppBar(
        title: Text(mehwerId!,
            style: (TextStyle(
              color: Colors.black,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ))),
        backgroundColor: Color.fromARGB(255, 128, 142, 220),
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
               margin: EdgeInsets.symmetric(horizontal: 20),
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
                  Color.fromARGB(255, 128, 142, 220),
                Color.fromARGB(255, 234, 235, 237),
                ], begin: Alignment.topLeft, end: Alignment.topRight),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black,
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
              width: 140,
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
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                 Color.fromARGB(255, 165, 156, 160),
                 Colors.limeAccent,
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
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(10.0),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '${MehwerFour[7].title}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue[800],
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ],
                ),
                overflow: TextOverflow.clip,
                textAlign: TextAlign.justify,
              ),
              // decoration: BoxDecoration(
              //   gradient: LinearGradient(
              //     begin: Alignment.center,
              //     end: Alignment.bottomCenter,
              //     colors: [
              //       Color.fromARGB(255, 238, 175, 196),
              //       Colors.white,
              //     ],
              //   ),
              //   borderRadius: const BorderRadius.all(
              //     Radius.circular(20),
              //   ),
              //   border: Border.all(
              //     color: Color.fromARGB(255, 6, 6, 6),
              //     width: 2,
              //   ),
              // ),
            ),
            
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(10.0),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '${MehwerFour[7].details1}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue[800],
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ],
                ),
                overflow: TextOverflow.clip,
                textAlign: TextAlign.justify,
              ),
              // decoration: BoxDecoration(
                
              //   borderRadius: const BorderRadius.all(
              //     Radius.circular(20),
              //   ),
              //   border: Border.all(
              //     color: const Color.fromARGB(255, 4, 65, 6),
              //                  width: 2
              //   ),
              // ),
            ),
             Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(10.0),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '${MehwerFour[7].details2}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue[800],
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ],
                ),
                overflow: TextOverflow.clip,
                textAlign: TextAlign.justify,
              ),
              
              // ),
            ),
             
           Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/power.jpg',
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                  decoration: BoxDecoration(
               
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color: Color.fromARGB(255, 107, 5, 99),
                  width: 2,
                ),
                  ),
            ),
             SizedBox(
              height: 10,
            ),
          Container(
             margin: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              height: 200,
              alignment: Alignment.centerRight,
              child: Text(
               '${MehwerFour[7].details3}',
                style: TextStyle(
                  color: Colors.blue[800],
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
             Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                    //  margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 20,
                      height:20,
                      child: Text(
                        '',
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
                         Color.fromARGB(255, 70, 90, 219),
                            Color.fromARGB(255, 11, 11, 11),
                          ],
                        ),

                        //color: Colors.orangeAccent[100],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        // border: Border.all(
                        //   color: Color.fromARGB(255, 238, 234, 234),
                        //   width: 2,
                        // ),
                      ),
                      alignment: AlignmentDirectional.center,
                    ),
                    Expanded(
                      flex:2,
                      child: Container(
                        //margin: EdgeInsets.symmetric(horizontal: 5),
                       // padding: EdgeInsets.all(10.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'ٌاضافة نص',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Cairo',
                                ),
                              ),
                            ],
                          ),
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                     Expanded(
                      flex:4,
                       child: Container(
                         margin: EdgeInsets.only(left: 10),
                         // padding: EdgeInsets.all(10.0),
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'ٌلاضافة نص إلى شرائح عرضك التقديمى . اضغط على مربع النص على الشاشة الافتتاحية ثم اختر نوع الخط الذى تود استخدامه وحجمه و إبدا بكتابة النص .',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blue[800],
                                    //fontWeight: FontWeight.w800,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                    //  margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 20,
                      height:20,
                      child: Text(
                        '',
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
                         Color.fromARGB(255, 70, 90, 219),
                            Color.fromARGB(255, 11, 11, 11),
                          ],
                        ),

                        //color: Colors.orangeAccent[100],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        // border: Border.all(
                        //   color: Color.fromARGB(255, 238, 234, 234),
                        //   width: 2,
                        // ),
                      ),
                      alignment: AlignmentDirectional.center,
                    ),
                    Expanded(
                      flex:2,
                      child: Container(
                        //margin: EdgeInsets.symmetric(horizontal: 5),
                       // padding: EdgeInsets.all(10.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'ٌاضافة مؤثرات',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Cairo',
                                ),
                              ),
                            ],
                          ),
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                     Expanded(
                      flex:4,
                       child: Container(
                         margin: EdgeInsets.only(left: 10),
                         // padding: EdgeInsets.all(10.0),
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'ٌيتضمن برنامج العروض التقديمية العديد من البصريات التى تساهم فى ابرازعرضك التقديمى.',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blue[800],
                                    //fontWeight: FontWeight.w800,
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
                Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 20,
                      height:20,
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                         Color.fromARGB(255, 215, 31, 31),
                            const Color.fromARGB(255, 61, 67, 2),
                          ],
                        ),

                        //color: Colors.orangeAccent[100],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        
                      ),
                      alignment: AlignmentDirectional.center,
                    ),
                    Expanded(
                      flex:2,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                      //  padding: EdgeInsets.all(5.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'ٌتصميم Design',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.red,
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
                border: Border(
                  bottom: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex:4,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                       // padding: EdgeInsets.all(10.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'ٌإضغط على خيارات التصميم لكل شريحة و من ضمنها ألوان الخلفية .',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                 // fontWeight: FontWeight.bold,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 20,
                      height:20,
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                         Color.fromARGB(255, 215, 31, 31),
                            const Color.fromARGB(255, 61, 67, 2),
                          ],
                        ),

                        //color: Colors.orangeAccent[100],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        
                      ),
                      alignment: AlignmentDirectional.center,
                    ),
                    Expanded(
                      flex:2,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                      //  padding: EdgeInsets.all(5.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'ٌرسم Draw',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.red,
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
                border: Border(
                  bottom: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex:4,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                       // padding: EdgeInsets.all(10.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'ٌاختر من بين أدوات الرسم .',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                 // fontWeight: FontWeight.bold,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 20,
                      height:20,
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                         Color.fromARGB(255, 215, 31, 31),
                            const Color.fromARGB(255, 61, 67, 2),
                          ],
                        ),

                        //color: Colors.orangeAccent[100],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        
                      ),
                      alignment: AlignmentDirectional.center,
                    ),
                    Expanded(
                      flex:2,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                      //  padding: EdgeInsets.all(5.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'انتقالات Transitions',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo',
                                ),
                              ),
                            ],
                          ),
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                        ),
                         decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex:4,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                       // padding: EdgeInsets.all(10.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'ٌاختر مؤثرا بصريا تستخدمه عند الانتقال من شريحة الى أخرى',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                 // fontWeight: FontWeight.bold,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 20,
                      height:20,
                      child: Text(
                        '4',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                         Color.fromARGB(255, 215, 31, 31),
                            const Color.fromARGB(255, 61, 67, 2),
                          ],
                        ),

                        //color: Colors.orangeAccent[100],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        
                      ),
                      alignment: AlignmentDirectional.center,
                    ),
                    Expanded(
                      flex:2,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                      //  padding: EdgeInsets.all(5.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'مؤثرات الحركة',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo',
                                ),
                              ),
                            ],
                          ),
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                        ),
                         decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex:4,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                       // padding: EdgeInsets.all(10.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'ٌاختر أنواع مؤثرات الحركة التى تود استخدامها مع محتوى كل شريحة .',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                 // fontWeight: FontWeight.bold,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 20,
                      height:20,
                      child: Text(
                        '5',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                         Color.fromARGB(255, 215, 31, 31),
                            const Color.fromARGB(255, 61, 67, 2),
                          ],
                        ),

                        //color: Colors.orangeAccent[100],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        
                      ),
                      alignment: AlignmentDirectional.center,
                    ),
                    Expanded(
                      flex:2,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                      //  padding: EdgeInsets.all(5.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'عرض الشرائح',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo',
                                ),
                              ),
                            ],
                          ),
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                        ),
                         decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex:4,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                       // padding: EdgeInsets.all(10.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'ٌحدد الطريقة التى تود تقديم عرضكبها . و توقيتا لكل شريحة كما يمكنك مشاهدة العرض بالضغط على ايقونة العرض أو بالضغط على مفتاح F5فى لوحة المفاتيح .',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                 // fontWeight: FontWeight.bold,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                    //  margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 20,
                      height:20,
                      child: Text(
                        '',
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
                         Color.fromARGB(255, 70, 90, 219),
                            Color.fromARGB(255, 11, 11, 11),
                          ],
                        ),

                        //color: Colors.orangeAccent[100],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        // border: Border.all(
                        //   color: Color.fromARGB(255, 238, 234, 234),
                        //   width: 2,
                        // ),
                      ),
                      alignment: AlignmentDirectional.center,
                    ),
                    Expanded(
                      flex:2,
                      child: Container(
                        //margin: EdgeInsets.symmetric(horizontal: 5),
                       // padding: EdgeInsets.all(10.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'ٌإدراج الصور',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Cairo',
                                ),
                              ),
                            ],
                          ),
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                     Expanded(
                      flex:4,
                       child: Container(
                         margin: EdgeInsets.only(left: 10),
                         // padding: EdgeInsets.all(10.0),
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'ٌ${MehwerFour[7].imageUrl}',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blue[800],
                                    //fontWeight: FontWeight.w800,
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
             Container(
              margin: EdgeInsets.only(left: 20),
              width:double.infinity,
              height: 40,
              alignment: Alignment.centerRight,
              child: Text(
                'عند تصميم عرضك التقديمى إحرص على مراعاة ما يلى :',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.right,
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.red,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: 20,
                      height:20,
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                         Color.fromARGB(255, 4, 97, 21),
                            const Color.fromARGB(255, 61, 67, 2),
                          ],
                        ),

                        //color: Colors.orangeAccent[100],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                       
                      ),
                      alignment: AlignmentDirectional.center,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                       // padding: EdgeInsets.all(10.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'ٌتجنب الفقرات او الجمل الطويلة ',
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
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                     margin: EdgeInsets.symmetric(horizontal: 10),
                      width: 20,
                      height: 20,
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                                Color.fromARGB(255, 4, 97, 21),
                            const Color.fromARGB(255, 61, 67, 2),
                          ],
                        ),

                        //color: Colors.orangeAccent[100],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        
                      ),
                      alignment: AlignmentDirectional.center,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                       // padding: EdgeInsets.all(5.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text:
                                    'التحقق من أن يكون نوع الخط وحجمه مقروءين .',
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
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                     margin: EdgeInsets.symmetric(horizontal: 10),
                      width:20,
                      height: 20,
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                           Color.fromARGB(255, 4, 97, 21),
                            const Color.fromARGB(255, 61, 67, 2),
                          ],
                        ),

                        //color: Colors.orangeAccent[100],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        
                      ),
                      alignment: AlignmentDirectional.center,
                    ),
                    Expanded(
                      child: Container(
                         margin: EdgeInsets.symmetric(horizontal: 10),
                       // padding: EdgeInsets.all(5.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'استخدم صور ذات صلة بالموضوع بدلا من النصوص كلما أمكن .',
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
                      ),
                    ),
                  ],
                ),
               
                
              ],
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
                  primary:  Color.fromARGB(255, 76, 99, 227),

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
