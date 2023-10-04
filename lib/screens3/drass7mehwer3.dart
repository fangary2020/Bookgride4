import 'package:computer4/Screens/screen_mehwer3.dart';
import 'package:computer4/moduls/mehewer_details.dart';
import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

import '../Screens/screen_mehwer2.dart';
import '../moduls/list_droos.dart';

class Drass7Mehwer3 extends StatefulWidget {
  static const routName = '/Drass7Mehwer3';
  const Drass7Mehwer3({super.key});

  @override
  State<Drass7Mehwer3> createState() => _Drass7Mehwer3State();
}

class _Drass7Mehwer3State extends State<Drass7Mehwer3> {
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
    AssetController = VideoPlayerController.asset("assets/vedio/search11.mp4")
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
    
    List<DroosDetails> Mehwerthird = droosdetails3;
  return Scaffold(
       appBar: AppBar(
        title: Text(mehwerId!),
        backgroundColor: Color.fromARGB(255, 162, 7, 59),
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
                builder: (context) => DroosMehwer3(),
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
                height:50,
                alignment: Alignment.center,
                child: Text(
                  '${mehwerTitle}',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                   overflow: TextOverflow.clip,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: 
                  [
                    Color.fromARGB(255, 139, 5, 76),
                    const Color.fromARGB(255, 240, 124, 163),
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
              margin: EdgeInsets.only(left: 250),
              width: 130,
              height: 40,
              child: Text(
                'لنتعلم',
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
                     Colors.pink,
                    Color.fromARGB(255, 244, 143, 138),
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
               // margin: EdgeInsets.only(left: 40),
                 width: double.infinity,
              height: 50,
                alignment: Alignment.center,
                child: Text(
                  'إجراء بحث رقمى للحصول على محتوى موثوق',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                
                
                ),
                // alignment: AlignmentDirectional.center,
             
                Container(
                padding: EdgeInsets.all(5.0),
                
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                      text: '${Mehwerthird[6].title}',
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
                                         Colors.pink,
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
                                  text: '${Mehwerthird[6].details1}',
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
                                         Colors.pink,
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
                          text: '${Mehwerthird[6].details2}',
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
                                         Colors.pink,
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
                          text: 'استعد لتقيم أنواع المصادر التى اخترتها هل هى موثوقة أم غير موثوقة ؟',
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
              margin: EdgeInsets.symmetric(horizontal:50),
              width: double.infinity,
              height: 50,
              child: Text(
                'المصادر الموثوقة',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 92, 3, 50),
                    Color.fromARGB(255, 225, 80, 36),
                  ],
                ),

                //color: Colors.orangeAccent[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color:Colors.yellowAccent,
                  width: 2,
                ),
              ),
              alignment: AlignmentDirectional.center,
            ),
            Container(
                padding: EdgeInsets.all(5.0),
                
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '${Mehwerthird[6].details3}',
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
                Container(
              margin: EdgeInsets.symmetric(horizontal:50),
              width: double.infinity,
              height: 50,
              child: Text(
                'المصادر غير الموثوقة',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 92, 3, 50),
                    Color.fromARGB(255, 225, 80, 36),
                  ],
                ),

                //color: Colors.orangeAccent[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color:Colors.yellowAccent,
                  width: 2,
                ),
              ),
              alignment: AlignmentDirectional.center,
            ),
            Container(
                padding: EdgeInsets.all(5.0),
                
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '${Mehwerthird[6].imageUrl}',
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
               Container(
             // margin: EdgeInsets.only(left: 250),
              width: double.infinity,
              height: 250,
              child: Text(
                '${Mehwerthird[6].imageUrl2}',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 251, 154, 186),
                    Color.fromARGB(255, 243, 197, 137),
                  ],
                ),

                //color: Colors.orangeAccent[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color:Colors.green.shade900,
                  width: 2,
                ),
              ),
              alignment: AlignmentDirectional.center,
            ),
            SizedBox(
                height: 10,
              ),
                Container(
              margin: EdgeInsets.symmetric(horizontal:30),
              width: double.infinity,
              height: 50,
              child: Text(
                'تنظيم تقريرك و كتابته',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 92, 3, 50),
                    Color.fromARGB(255, 225, 80, 36),
                  ],
                ),

                //color: Colors.orangeAccent[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color:Colors.yellowAccent,
                  width: 2,
                ),
              ),
              alignment: AlignmentDirectional.center,
            ),
            Container(
                padding: EdgeInsets.all(5.0),
                
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'بعد انتهائك من البحث عبر الانترنت . اجمع ملاحظاتك و المعلومات الموثوقة . استخدم ملاحظاتك لكتابة مخطط . سيساعدك ذلك على تقديم المعلومات فى تقريرك بطريقة منطقية.',
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
               Container(
              margin: EdgeInsets.symmetric(horizontal:50),
              width: double.infinity,
              height: 50,
              child: Text(
                'كتابة المخطط',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 92, 3, 50),
                    Color.fromARGB(255, 225, 80, 36),
                  ],
                ),

                //color: Colors.orangeAccent[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color:Colors.yellowAccent,
                  width: 2,
                ),
              ),
              alignment: AlignmentDirectional.center,
            ),
              Container(
                padding: EdgeInsets.all(5.0),
                
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'على المخطط أن يتضمن الاجزاء التالية',
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
                  textAlign: TextAlign.center,
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
                                         Colors.pink,
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
                                  text: 'مقدمة تعرض موضوع التقرير',
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
                                         Colors.pink,
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
                          text: 'فقرات داعمة تقدم المعلومات',
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
                                         Colors.pink,
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
                          text: 'خاتمة أو أفكارا نهائية حول المعلومات التى قدمتها .',
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
                    primary: Color.fromARGB(255, 176, 23, 3),

                    // minimumSize: Size(100, 20),
                  ),
                  onPressed: () {
                    AssetController.pause();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DroosMehwer3(),
                      ),
                    );
                  },
                  child: Text(
                    'عودة الى المحور الثالث  ',
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